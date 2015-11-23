#import system.

#class InstructionLw
{
	#constructor new []

	#method interpret &ins:aInstruction &vm:aVm
    [
        #var(type:byte)destinationRegister.
        #var(type:byte)sourceRegister.
        #var(type:short)sourceOffset.
        
        destinationRegister := ((aInstruction shift &index:08) and: 00Fh).
        sourceRegister      := ((aInstruction shift &index:12) and: 00Fh).
        sourceOffset        := ((aInstruction shift &index:16) and: 0FFFFh).
        
        #var address := (aVm getRegister:sourceRegister) + sourceOffset.
        
        aVm setRegister &register:destinationRegister &value:((aVm getMemory) readWord:address).
    ]
}