.assembly Hamunii.ILPlugin { .ver 0:1:0:0 }

.class public ILPlugin
    extends [BepInEx]BepInEx.BaseUnityPlugin
{
    // Some magic here.
    // [BepInPlugin("Hamunii.ILPlugin", "ILPlugin", "1.0.0")]
    .custom instance void [BepInEx]BepInEx.BepInPlugin::.ctor(string, string, string) = (
        01 00 10 48 61 6d 75 6e 69 69 2e 49 4c 50 6c 75
        67 69 6e 08 49 4c 50 6c 75 67 69 6e 05 31 2e 30
        2e 30 00 00
    )

    .method public hidebysig specialname rtspecialname
        instance void .ctor()
    {
        ldarg.0
        call instance void [BepInEx]BepInEx.BaseUnityPlugin::.ctor()
        ret
    }

    .field static class [BepInEx]BepInEx.Logging.ManualLogSource Logger

    .method void Awake()
    {        
        ldarg.0
        call instance class [BepInEx]BepInEx.Logging.ManualLogSource [BepInEx]BepInEx.BaseUnityPlugin::get_Logger()
        stsfld class [BepInEx]BepInEx.Logging.ManualLogSource ILPlugin::Logger
        ldsfld class [BepInEx]BepInEx.Logging.ManualLogSource ILPlugin::Logger
        ldstr "Hamunii.ILPlugin has loaded!"
        callvirt instance void [BepInEx]BepInEx.Logging.ManualLogSource::LogInfo(object)

        call void Patches::Init()

        ret
    }
}