package external;

class Native
{
    public static function getTaskMemory():Float
    {
        #if cpp
        var bytes:cpp.Float64 = external.memory.Memory.getCurrentUsage();
        return bytes;
        #else
        return 0.0;
        #end
    }
}