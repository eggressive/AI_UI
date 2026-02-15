use global_hotkey::hotkey::{Code, HotKey, Modifiers};
use global_hotkey::GlobalHotKeyManager;

/// Holds the hotkey manager and all registered hotkey IDs for matching events.
/// The manager must be kept alive for the entire application lifetime.
pub struct RegisteredHotkeys {
    pub manager: GlobalHotKeyManager,
    pub command_bar_id: u32,
    pub launcher_id: u32,
    pub settings_id: u32,
}

/// Register all global hotkeys and return the manager + IDs.
pub fn register_all_hotkeys() -> Result<RegisteredHotkeys, Box<dyn std::error::Error>> {
    let manager = GlobalHotKeyManager::new()?;

    let command_bar = HotKey::new(Some(Modifiers::CONTROL), Code::Space);
    manager.register(command_bar)?;

    let launcher = HotKey::new(
        Some(Modifiers::CONTROL | Modifiers::SHIFT),
        Code::KeyA,
    );
    manager.register(launcher)?;

    let settings = HotKey::new(
        Some(Modifiers::CONTROL | Modifiers::SHIFT),
        Code::KeyS,
    );
    manager.register(settings)?;

    Ok(RegisteredHotkeys {
        manager,
        command_bar_id: command_bar.id(),
        launcher_id: launcher.id(),
        settings_id: settings.id(),
    })
}
