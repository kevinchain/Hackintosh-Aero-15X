// This SSDT adds the missing Memory (DRAM) Controller to the system.

DefinitionBlock("", "SSDT", 2, "hack", "MCHC", 0)
{
    External(_SB.PCI0, DeviceObj)

    Scope(_SB.PCI0)
    {
		Device (MCHC)
		{
		    Name (_ADR, Zero)
		}
	}
}