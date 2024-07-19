.class Patches
    extends [netstandard]System.Object
{
    .method static void Init()
    {
        ldnull
        ldftn void Patches::InitializeGame_Awake(
            class ['MMHOOK_Assembly-CSharp']On.InitializeGame/orig_Awake orig,
            class ['Assembly-CSharp']InitializeGame self
        )
        newobj instance void ['MMHOOK_Assembly-CSharp']On.InitializeGame/hook_Awake::.ctor(object, native int)
        call void ['MMHOOK_Assembly-CSharp']On.InitializeGame::add_Awake(class ['MMHOOK_Assembly-CSharp']On.InitializeGame/hook_Awake)
        ret
    }

    .method static void
        InitializeGame_Awake(
            class ['MMHOOK_Assembly-CSharp']On.InitializeGame/orig_Awake orig,
            class ['Assembly-CSharp']InitializeGame self
        )
    {

		ldsfld class [BepInEx]BepInEx.Logging.ManualLogSource ILPlugin::Logger
        ldstr "Hello from InitializeGame.Awake Hook from ILPlugin!"
        callvirt instance void [BepInEx]BepInEx.Logging.ManualLogSource::LogInfo(object)

        ldarg.0
        ldarg.1
        callvirt instance void ['MMHOOK_Assembly-CSharp']On.InitializeGame/orig_Awake::Invoke(class ['Assembly-CSharp']InitializeGame)

        ret
    }
}