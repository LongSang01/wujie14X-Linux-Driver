/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of dsdt.dat
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000FB73 (64371)
 *     Revision         0x02
 *     Checksum         0x38
 *     OEM ID           "ALASKA"
 *     OEM Table ID     "A M I "
 *     OEM Revision     0x01072009 (17244169)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200717 (538969879)
 */
DefinitionBlock ("", "DSDT", 2, "ALASKA", "A M I ", 0x01072009)
{
    External (_SB_.ALIB, MethodObj)    // 2 Arguments
    External (_SB_.APTS, MethodObj)    // 1 Arguments
    External (_SB_.AWAK, MethodObj)    // 1 Arguments
    External (_SB_.INOU.CSTM, IntObj)
    External (_SB_.INOU.CTAF, MethodObj)    // 1 Arguments
    External (_SB_.NPCF, UnknownObj)
    External (_SB_.NPCF.ACBT, UnknownObj)
    External (_SB_.NPCF.AMAT, UnknownObj)
    External (_SB_.NPCF.AMIT, UnknownObj)
    External (_SB_.NPCF.ATPP, UnknownObj)
    External (_SB_.NPCF.CTGP, UnknownObj)
    External (_SB_.NPCF.DBAC, UnknownObj)
    External (_SB_.NPCF.DMAT, UnknownObj)
    External (_SB_.NPCF.DMIT, UnknownObj)
    External (_SB_.NPCF.WMEN, UnknownObj)
    External (_SB_.PCI0.GP17.VGA_.AFN7, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.GP17.VGA_.M460, MethodObj)    // 7 Arguments
    External (_SB_.PCI0.GPP0.PEGP._PSC, UnknownObj)
    External (_SB_.PCI0.GPP0.PEGP.EDP1, DeviceObj)
    External (_SB_.PCI0.GPP0.PG00._STA, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GPP6.WLAN.AUPT, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.CL01, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.CL02, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.CL03, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.CL04, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.CLSP, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.DDSS, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.DPMD, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.ECON, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.G2OC, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.G2OF, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.G2OW, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.G2VC, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.G2VF, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.G2VW, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.G5OC, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.G5OF, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.G5OW, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.G5VC, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.G5VF, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.G5VW, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.G6VC, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.G6VF, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.G6VW, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.MOID, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.PEDD, UnknownObj)
    External (_SB_.PCI0.GPP6.WLAN.PMID, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.PNSZ, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.PPID, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.S24G, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.S5G1, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.S5G2, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.S5G3, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.S5G4, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.S6G1, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.S6G2, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.S6G3, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.S6G4, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.S6G5, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.S6G6, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.SARS, IntObj)
    External (_SB_.PCI0.GPP6.WLAN.UHBS, UnknownObj)
    External (_SB_.PCI0.GPP6.WLAN.WOL5, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.ADPT, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.APL1, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.APL4, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.APTC, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.APTN, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.BFLG, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.BLLV, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.BLSC, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.BPST, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.CFLG, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.CGCT, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.CMD0, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.CMD2, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.CMD4, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.CMD6, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.CMDH, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.CMDL, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.CPTM, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.CPUA, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.CTWA, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.CUME, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.DBAP, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.DBD1, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.DBD2, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.DBEN, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.DBST, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.DGPS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.SBRG.EC0_.DRDY, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.EMON, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.EYER, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.FFAN, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.GC6S, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.GFID, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.HDAT, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.IGPS, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.SBRG.EC0_.IGPU, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.INPS, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.LCOC, UnknownObj)
    External (_SB_.PCI0.SBRG.EC0_.LDAT, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.OUTS, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.S0E1, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.S0E3, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.SDAN, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.TBME, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.THOT, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.TPID, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.UFME, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.VGAT, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.WFLG, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.WHMS, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.WMS0, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.XHPP, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.XIF1, IntObj)
    External (_SB_.PCI0.SBRG.EC0_.XIF4, IntObj)
    External (_SB_.PCI0.VGA_, UnknownObj)
    External (_SB_.PCI0.VGA_.AFN0, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.VGA_.LCD_, DeviceObj)
    External (_SB_.UBTC, DeviceObj)
    External (_SB_.UBTC.CCI0, IntObj)
    External (_SB_.UBTC.CCI1, IntObj)
    External (_SB_.UBTC.CCI2, IntObj)
    External (_SB_.UBTC.CCI3, IntObj)
    External (_SB_.UBTC.MGI0, IntObj)
    External (_SB_.UBTC.MGI1, IntObj)
    External (_SB_.UBTC.MGI2, IntObj)
    External (_SB_.UBTC.MGI3, IntObj)
    External (_SB_.UBTC.MGI4, IntObj)
    External (_SB_.UBTC.MGI5, IntObj)
    External (_SB_.UBTC.MGI6, IntObj)
    External (_SB_.UBTC.MGI7, IntObj)
    External (_SB_.UBTC.MGI8, IntObj)
    External (_SB_.UBTC.MGI9, IntObj)
    External (_SB_.UBTC.MGIA, IntObj)
    External (_SB_.UBTC.MGIB, IntObj)
    External (_SB_.UBTC.MGIC, IntObj)
    External (_SB_.UBTC.MGID, IntObj)
    External (_SB_.UBTC.MGIE, IntObj)
    External (_SB_.UBTC.MGIF, IntObj)
    External (AFN4, MethodObj)    // 1 Arguments
    External (AUPT, IntObj)
    External (CL01, IntObj)
    External (CL02, IntObj)
    External (CL03, IntObj)
    External (CL04, IntObj)
    External (CLSP, IntObj)
    External (CRBI, UnknownObj)
    External (DDSS, IntObj)
    External (DPMD, IntObj)
    External (ECON, IntObj)
    External (G2OC, IntObj)
    External (G2OF, IntObj)
    External (G2OW, IntObj)
    External (G2VC, IntObj)
    External (G2VF, IntObj)
    External (G2VW, IntObj)
    External (G5OC, IntObj)
    External (G5OF, IntObj)
    External (G5OW, IntObj)
    External (G5VC, IntObj)
    External (G5VF, IntObj)
    External (G5VW, IntObj)
    External (G6VC, IntObj)
    External (G6VF, IntObj)
    External (G6VW, IntObj)
    External (M010, MethodObj)    // 2 Arguments
    External (M017, MethodObj)    // 6 Arguments
    External (M019, MethodObj)    // 4 Arguments
    External (M020, MethodObj)    // 5 Arguments
    External (M037, DeviceObj)
    External (M046, IntObj)
    External (M047, IntObj)
    External (M050, DeviceObj)
    External (M051, DeviceObj)
    External (M052, DeviceObj)
    External (M053, DeviceObj)
    External (M054, DeviceObj)
    External (M055, DeviceObj)
    External (M056, DeviceObj)
    External (M057, DeviceObj)
    External (M058, DeviceObj)
    External (M059, DeviceObj)
    External (M062, DeviceObj)
    External (M068, DeviceObj)
    External (M069, DeviceObj)
    External (M070, DeviceObj)
    External (M071, DeviceObj)
    External (M072, DeviceObj)
    External (M074, DeviceObj)
    External (M075, DeviceObj)
    External (M076, DeviceObj)
    External (M077, DeviceObj)
    External (M078, DeviceObj)
    External (M079, DeviceObj)
    External (M080, DeviceObj)
    External (M081, DeviceObj)
    External (M082, FieldUnitObj)
    External (M083, FieldUnitObj)
    External (M084, FieldUnitObj)
    External (M085, FieldUnitObj)
    External (M086, FieldUnitObj)
    External (M087, FieldUnitObj)
    External (M088, FieldUnitObj)
    External (M089, FieldUnitObj)
    External (M090, FieldUnitObj)
    External (M091, FieldUnitObj)
    External (M092, FieldUnitObj)
    External (M093, FieldUnitObj)
    External (M094, FieldUnitObj)
    External (M095, FieldUnitObj)
    External (M096, FieldUnitObj)
    External (M097, FieldUnitObj)
    External (M098, FieldUnitObj)
    External (M099, FieldUnitObj)
    External (M100, FieldUnitObj)
    External (M101, FieldUnitObj)
    External (M102, FieldUnitObj)
    External (M103, FieldUnitObj)
    External (M104, FieldUnitObj)
    External (M105, FieldUnitObj)
    External (M106, FieldUnitObj)
    External (M107, FieldUnitObj)
    External (M108, FieldUnitObj)
    External (M109, FieldUnitObj)
    External (M110, FieldUnitObj)
    External (M115, BuffObj)
    External (M116, BuffFieldObj)
    External (M117, BuffFieldObj)
    External (M118, BuffFieldObj)
    External (M119, BuffFieldObj)
    External (M120, BuffFieldObj)
    External (M122, FieldUnitObj)
    External (M127, DeviceObj)
    External (M128, FieldUnitObj)
    External (M131, FieldUnitObj)
    External (M132, FieldUnitObj)
    External (M133, FieldUnitObj)
    External (M134, FieldUnitObj)
    External (M135, FieldUnitObj)
    External (M136, FieldUnitObj)
    External (M220, FieldUnitObj)
    External (M221, FieldUnitObj)
    External (M226, FieldUnitObj)
    External (M227, DeviceObj)
    External (M229, FieldUnitObj)
    External (M231, FieldUnitObj)
    External (M233, FieldUnitObj)
    External (M235, FieldUnitObj)
    External (M23A, FieldUnitObj)
    External (M251, FieldUnitObj)
    External (M280, FieldUnitObj)
    External (M290, FieldUnitObj)
    External (M29A, FieldUnitObj)
    External (M310, FieldUnitObj)
    External (M31C, FieldUnitObj)
    External (M320, FieldUnitObj)
    External (M321, FieldUnitObj)
    External (M322, FieldUnitObj)
    External (M323, FieldUnitObj)
    External (M324, FieldUnitObj)
    External (M325, FieldUnitObj)
    External (M326, FieldUnitObj)
    External (M327, FieldUnitObj)
    External (M328, FieldUnitObj)
    External (M329, DeviceObj)
    External (M32A, DeviceObj)
    External (M32B, DeviceObj)
    External (M330, DeviceObj)
    External (M331, FieldUnitObj)
    External (M378, FieldUnitObj)
    External (M379, FieldUnitObj)
    External (M380, FieldUnitObj)
    External (M381, FieldUnitObj)
    External (M382, FieldUnitObj)
    External (M383, FieldUnitObj)
    External (M384, FieldUnitObj)
    External (M385, FieldUnitObj)
    External (M386, FieldUnitObj)
    External (M387, FieldUnitObj)
    External (M388, FieldUnitObj)
    External (M389, FieldUnitObj)
    External (M390, FieldUnitObj)
    External (M391, FieldUnitObj)
    External (M392, FieldUnitObj)
    External (M404, BuffObj)
    External (M408, MutexObj)
    External (M414, FieldUnitObj)
    External (M444, FieldUnitObj)
    External (M449, FieldUnitObj)
    External (M453, FieldUnitObj)
    External (M454, FieldUnitObj)
    External (M455, FieldUnitObj)
    External (M456, FieldUnitObj)
    External (M457, FieldUnitObj)
    External (M460, MethodObj)    // 7 Arguments
    External (M4C0, FieldUnitObj)
    External (M4F0, FieldUnitObj)
    External (M600, MethodObj)    // 2 Arguments
    External (M601, MethodObj)    // 6 Arguments
    External (M610, FieldUnitObj)
    External (M620, FieldUnitObj)
    External (M631, FieldUnitObj)
    External (M652, FieldUnitObj)
    External (MOID, IntObj)
    External (PEDD, UnknownObj)
    External (PMID, IntObj)
    External (PNSZ, IntObj)
    External (PPID, IntObj)
    External (S24G, IntObj)
    External (S5G1, IntObj)
    External (S5G2, IntObj)
    External (S5G3, IntObj)
    External (S5G4, IntObj)
    External (S6G1, IntObj)
    External (S6G2, IntObj)
    External (S6G3, IntObj)
    External (S6G4, IntObj)
    External (S6G5, IntObj)
    External (S6G6, IntObj)
    External (SARS, IntObj)
    External (UHBS, UnknownObj)
    External (WOL5, IntObj)

    Name (PEBL, 0x10000000)
    Name (NBTS, 0x5000)
    Name (CPVD, One)
    Name (SMBB, 0x0B20)
    Name (SMBL, 0x20)
    Name (SMB0, 0x0B00)
    Name (SMBM, 0x10)
    Name (PMBS, 0x0800)
    Name (PMLN, 0xA0)
    Name (SMIO, 0xB2)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (HPTB, 0xFED00000)
    Name (WDTB, Zero)
    Name (WDTL, Zero)
    Name (GIOB, 0xFED81500)
    Name (IOMB, 0xFED80D00)
    Name (SSMB, 0xFED80200)
    Name (UTDB, Zero)
    Name (PWEN, 0x20)
    Name (REST, 0x28)
    Name (IOBS, 0x0580)
    Name (IOB2, Zero)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, One)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (ITKE, Zero)
    Name (PEBS, 0xE0000000)
    Name (PELN, 0x10000000)
    Name (CSMI, 0x61)
    Name (DSSP, Zero)
    Name (FHPP, One)
    Name (SMIA, 0xB2)
    Name (SMIB, 0xB3)
    Name (OFST, 0x35)
    Name (TRST, 0x02)
    Name (TCMF, Zero)
    Name (TMF1, Zero)
    Name (TMF2, Zero)
    Name (TMF3, Zero)
    Name (TTPF, Zero)
    Name (DTPT, Zero)
    Name (TTDP, One)
    Name (TPMB, 0xFFFFFFFF)
    Name (TPBS, 0x1000)
    Name (TPMC, 0xFFFFFFFF)
    Name (TPCS, 0x1000)
    Name (TPMM, 0xFED40000)
    Name (FTPM, 0xFFFFFFFF)
    Name (PPIM, 0x96F16D18)
    Name (PPIL, 0x1C)
    Name (TPMF, One)
    Name (PPIV, One)
    Name (AMDT, 0x02)
    Name (MBEC, Zero)
    Name (NBTP, 0xFEC00000)
    Name (PWOK, 0x9A)
    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        If (Arg0)
        {
            \_SB.DSPI ()
            \_SB.PCI0.NAPE ()
        }

        PXXX (Arg0)
    }

    OperationRegion (DEB0, SystemIO, 0x80, 0x04)
    Field (DEB0, DWordAcc, NoLock, Preserve)
    {
        DBG8,   32
    }

    Name (PICM, Zero)
    Method (PXXX, 1, NotSerialized)
    {
        If (Arg0)
        {
            DBGX = 0xAA
        }
        Else
        {
            DBGX = 0xAC
        }

        PICM = Arg0
    }

    Name (OSVR, Ones)
    Method (OSFL, 0, NotSerialized)
    {
        If ((OSVR != Ones))
        {
            Return (OSVR) /* \OSVR */
        }

        If ((PICM == Zero))
        {
            DBGX = 0xAC
        }

        OSVR = 0x03
        If (CondRefOf (\_OSI))
        {
            If (_OSI ("Windows 2001"))
            {
                OSVR = 0x04
            }

            If (_OSI ("Windows 2001.1"))
            {
                OSVR = 0x05
            }

            If (_OSI ("FreeBSD"))
            {
                OSVR = 0x06
            }

            If (_OSI ("HP-UX"))
            {
                OSVR = 0x07
            }

            If (_OSI ("OpenVMS"))
            {
                OSVR = 0x08
            }

            If (_OSI ("Windows 2001 SP1"))
            {
                OSVR = 0x09
            }

            If (_OSI ("Windows 2001 SP2"))
            {
                OSVR = 0x0A
            }

            If (_OSI ("Windows 2001 SP3"))
            {
                OSVR = 0x0B
            }

            If (_OSI ("Windows 2006"))
            {
                OSVR = 0x0C
            }

            If (_OSI ("Windows 2006 SP1"))
            {
                OSVR = 0x0D
            }

            If (_OSI ("Windows 2009"))
            {
                OSVR = 0x0E
            }

            If (_OSI ("Windows 2012"))
            {
                OSVR = 0x0F
            }

            If (_OSI ("Windows 2013"))
            {
                OSVR = 0x10
            }
        }
        Else
        {
            If (MCTH (_OS, "Microsoft Windows NT"))
            {
                OSVR = Zero
            }

            If (MCTH (_OS, "Microsoft Windows"))
            {
                OSVR = One
            }

            If (MCTH (_OS, "Microsoft WindowsME: Millennium Edition"))
            {
                OSVR = 0x02
            }

            If (MCTH (_OS, "Linux"))
            {
                OSVR = 0x03
            }

            If (MCTH (_OS, "FreeBSD"))
            {
                OSVR = 0x06
            }

            If (MCTH (_OS, "HP-UX"))
            {
                OSVR = 0x07
            }

            If (MCTH (_OS, "OpenVMS"))
            {
                OSVR = 0x08
            }
        }

        Return (OSVR) /* \OSVR */
    }

    Method (MCTH, 2, NotSerialized)
    {
        If ((SizeOf (Arg0) < SizeOf (Arg1)))
        {
            Return (Zero)
        }

        Local0 = (SizeOf (Arg0) + One)
        Name (BUF0, Buffer (Local0){})
        Name (BUF1, Buffer (Local0){})
        BUF0 = Arg0
        BUF1 = Arg1
        While (Local0)
        {
            Local0--
            If ((DerefOf (BUF0 [Local0]) != DerefOf (BUF1 [Local0]
                )))
            {
                Return (Zero)
            }
        }

        Return (One)
    }

    Name (PRWP, Package (0x02)
    {
        Zero, 
        Zero
    })
    Method (GPRW, 2, NotSerialized)
    {
        PRWP [Zero] = Arg0
        Local0 = (SS1 << One)
        Local0 |= (SS2 << 0x02)
        Local0 |= (SS3 << 0x03)
        Local0 |= (SS4 << 0x04)
        If (((One << Arg1) & Local0))
        {
            PRWP [One] = Arg1
        }
        Else
        {
            Local0 >>= One
            If (((OSFL () == One) || (OSFL () == 0x02)))
            {
                FindSetLeftBit (Local0, PRWP [One])
            }
            Else
            {
                FindSetRightBit (Local0, PRWP [One])
            }
        }

        If ((DAS3 == Zero))
        {
            If ((Arg1 <= 0x03))
            {
                PRWP [One] = Zero
            }
        }

        Return (PRWP) /* \PRWP */
    }

    Name (WAKP, Package (0x02)
    {
        Zero, 
        Zero
    })
    Method (UPWP, 1, NotSerialized)
    {
        If (DerefOf (WAKP [Zero]))
        {
            WAKP [One] = Zero
        }
        Else
        {
            WAKP [One] = Arg0
        }
    }

    OperationRegion (DEB3, SystemIO, 0x80, One)
    Field (DEB3, ByteAcc, NoLock, Preserve)
    {
        DBGX,   8
    }

    OperationRegion (DEB1, SystemIO, 0x90, 0x02)
    Field (DEB1, WordAcc, NoLock, Preserve)
    {
        DBG9,   16
    }

    Name (SS1, Zero)
    Name (SS2, Zero)
    Name (SS3, Zero)
    Name (SS4, One)
    Name (IOST, 0xFFFF)
    Name (TOPM, 0x00000000)
    Name (ROMS, 0xFFE00000)
    Name (VGAF, One)
    OperationRegion (GNVS, SystemMemory, 0x96F16D98, 0x0D)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        CNSB,   8, 
        RDHW,   8, 
        DAS3,   8, 
        ALST,   8, 
        BLTH,   8, 
        NFCS,   8, 
        MWTT,   8, 
        DPTC,   8, 
        WOVS,   8, 
        THPN,   8, 
        THPD,   8, 
        RV2I,   8, 
        ISDS,   8
    }

    OperationRegion (DEB2, SystemIO, 0x80, 0x04)
    Field (DEB2, DWordAcc, NoLock, Preserve)
    {
        P80H,   32
    }

    Name (OSTY, Ones)
    OperationRegion (ACMS, SystemIO, 0x72, 0x02)
    Field (ACMS, ByteAcc, NoLock, Preserve)
    {
        ACMX,   8, 
        ACMA,   8
    }

    IndexField (ACMX, ACMA, ByteAcc, NoLock, Preserve)
    {
        Offset (0xB9), 
        IMEN,   8
    }

    OperationRegion (PSMI, SystemIO, SMIO, 0x02)
    Field (PSMI, ByteAcc, NoLock, Preserve)
    {
        APMC,   8, 
        APMD,   8
    }

    OperationRegion (PMRG, SystemMemory, 0xFED80300, 0x0100)
    Field (PMRG, AnyAcc, NoLock, Preserve)
    {
            ,   6, 
        HPEN,   1, 
        Offset (0x60), 
        P1EB,   16, 
        Offset (0xF0), 
            ,   3, 
        RSTU,   1
    }

    OperationRegion (GSMG, SystemMemory, 0xFED81500, 0x03FF)
    Field (GSMG, AnyAcc, NoLock, Preserve)
    {
        Offset (0x5C), 
        Offset (0x5E), 
        GS23,   1, 
            ,   5, 
        GV23,   1, 
        GE23,   1, 
        Offset (0xA0), 
        Offset (0xA2), 
        GS40,   1, 
            ,   5, 
        GV40,   1, 
        GE40,   1
    }

    OperationRegion (GSMM, SystemMemory, 0xFED80000, 0x1000)
    Field (GSMM, AnyAcc, NoLock, Preserve)
    {
        Offset (0x288), 
            ,   1, 
        CLPS,   1, 
        Offset (0x296), 
            ,   7, 
        TMSE,   1, 
        Offset (0x2B0), 
            ,   2, 
        SLPS,   2
    }

    OperationRegion (PMI2, SystemMemory, 0xFED80300, 0x0100)
    Field (PMI2, AnyAcc, NoLock, Preserve)
    {
        Offset (0xBB), 
            ,   6, 
        PWDE,   1, 
        Offset (0xBC)
    }

    OperationRegion (P1E0, SystemIO, P1EB, 0x04)
    Field (P1E0, ByteAcc, NoLock, Preserve)
    {
        Offset (0x01), 
            ,   6, 
        PEWS,   1, 
        WSTA,   1, 
        Offset (0x03), 
            ,   6, 
        PEWD,   1
    }

    OperationRegion (IOCC, SystemIO, PMBS, 0x80)
    Field (IOCC, ByteAcc, NoLock, Preserve)
    {
        Offset (0x01), 
            ,   2, 
        RTCS,   1
    }

    Method (SPTS, 1, NotSerialized)
    {
        P80H = Arg0
        If ((Arg0 == 0x03))
        {
            RSTU = Zero
        }

        CLPS = One
        SLPS = One
        PEWS = PEWS /* \PEWS */
        If ((Arg0 == 0x03))
        {
            SLPS = One
        }

        If ((Arg0 == 0x04))
        {
            SLPS = One
            RSTU = One
        }

        If ((Arg0 == 0x05))
        {
            PWDE = One
        }
    }

    Method (SWAK, 1, NotSerialized)
    {
        If ((Arg0 == 0x03))
        {
            RSTU = One
        }

        PEWS = PEWS /* \PEWS */
        PEWD = Zero
        If (PICM)
        {
            \_SB.DSPI ()
        }

        If (TMSE)
        {
            TMSE = Zero
        }

        If ((Arg0 == 0x03))
        {
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        If ((Arg0 == 0x04))
        {
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }
    }

    Scope (_GPE)
    {
    }

    Name (OGAD, 0x96F16A98)
    Name (OGSZ, 0x0245)
    OperationRegion (OGNV, SystemMemory, OGAD, OGSZ)
    Field (OGNV, AnyAcc, Lock, Preserve)
    {
        WOL5,   8, 
        DPMD,   8, 
        MOID,   8, 
        SARS,   8, 
        S24G,   8, 
        S5G1,   8, 
        S5G2,   8, 
        S5G3,   8, 
        S5G4,   8, 
        S6G1,   8, 
        S6G2,   8, 
        S6G3,   8, 
        S6G4,   8, 
        S6G5,   8, 
        S6G6,   8, 
        G2VF,   8, 
        G2OF,   8, 
        G5VF,   8, 
        G5OF,   8, 
        G6VF,   8, 
        G6OF,   8, 
        G2VC,   8, 
        G2OC,   8, 
        G5VC,   8, 
        G5OC,   8, 
        G6VC,   8, 
        G6OC,   8, 
        G2VW,   8, 
        G2OW,   8, 
        G5VW,   8, 
        G5OW,   8, 
        G6VW,   8, 
        G6OW,   8, 
        CLSP,   8, 
        CL01,   8, 
        CL02,   8, 
        CL03,   8, 
        CL04,   8, 
        PMID,   16, 
        PPID,   16, 
        UHBS,   32, 
        AUPT,   8, 
        PEDD,   4096, 
        DDSS,   8, 
        GBAS,   32, 
        D888,   32, 
        D894,   32, 
        D8A4,   32, 
        D8A8,   32, 
        PNSZ,   8
    }

    Name (ADAR, 0x96F9AF18)
    Name (ADSZ, 0x0010)
    OperationRegion (ADGV, SystemMemory, ADAR, ADSZ)
    Field (ADGV, AnyAcc, Lock, Preserve)
    {
        Offset (0x04), 
        ADSN,   8, 
        Offset (0x0B), 
        ADI1,   8, 
        ADI2,   8, 
        ADI3,   8, 
        ADI4,   8, 
        ADI5,   8
    }

    Scope (_SB)
    {
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {4,5,6,10,11,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Name (PD12, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKH, 
                Zero
            }
        })
        Name (AR12, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x1C
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x1D
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x1E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x1F
            }
        })
        Name (PD14, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR14, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x20
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x21
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x22
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x23
            }
        })
        Name (PD16, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKH, 
                Zero
            }
        })
        Name (AR16, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x24
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x25
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x26
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x27
            }
        })
        Name (PD18, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR18, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x28
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x29
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x2B
            }
        })
        Name (PD24, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKF, 
                Zero
            }
        })
        Name (AR24, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x2E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x2F
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2C
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x2D
            }
        })
        Name (PD26, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR26, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x2A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x2B
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x28
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x29
            }
        })
        Name (PD28, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKF, 
                Zero
            }
        })
        Name (AR28, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x26
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x27
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x24
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x25
            }
        })
        Name (PD2A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR2A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x22
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x23
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x20
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x21
            }
        })
        Name (PD30, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKF, 
                Zero
            }
        })
        Name (AR30, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x1E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x1F
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x1C
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x1D
            }
        })
        Name (PD60, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR60, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x22
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x23
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x20
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x21
            }
        })
        Name (PD90, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKF, 
                Zero
            }
        })
        Name (AR90, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x26
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x27
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x24
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x25
            }
        })
        Name (PD92, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR92, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x2A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x2B
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x28
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x29
            }
        })
        Name (PD94, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKF, 
                Zero
            }
        })
        Name (AR94, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x2E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x2F
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2C
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x2D
            }
        })
        Name (PD00, Package (0x11)
        {
            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR00, Package (0x11)
        {
            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x19
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x1A
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x1B
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                Zero, 
                0x1E
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                Zero, 
                0x1F
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                Zero, 
                0x20
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                Zero, 
                0x21
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                Zero, 
                0x22
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                Zero, 
                0x23
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                Zero, 
                0x24
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                Zero, 
                Zero, 
                0x28
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                One, 
                Zero, 
                0x29
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                0x02, 
                Zero, 
                0x2A
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PD20, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKH, 
                Zero
            }
        })
        Name (AR20, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x2C
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x2D
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x2F
            }
        })
        Name (PD22, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKF, 
                Zero
            }
        })
        Name (AR22, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x2E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x2F
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2C
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x2D
            }
        })
        Name (PD10, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR10, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x18
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x19
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x1A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x1B
            }
        })
    }

    Scope (_SB)
    {
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00) /* \_SB_.AR00 */
                }

                Return (PD00) /* \_SB_.PD00 */
            }

            Device (AMDN)
            {
                Name (_HID, EisaId ("PNP0C01") /* System Board */)  // _HID: Hardware ID
                Name (_UID, 0xC8)  // _UID: Unique ID
                Name (_STA, 0x0F)  // _STA: Status
                Name (NPTR, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00000000,         // Address Length
                        _Y00)
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    CreateDWordField (NPTR, \_SB.PCI0.AMDN._Y00._LEN, PL)  // _LEN: Length
                    CreateDWordField (NPTR, \_SB.PCI0.AMDN._Y00._BAS, PB)  // _BAS: Base Address
                    PB = PEBS /* \PEBS */
                    PL = PEBL /* \PEBL */
                    Return (NPTR) /* \_SB_.PCI0.AMDN.NPTR */
                }
            }

            Method (NPTS, 1, NotSerialized)
            {
                APTS (Arg0)
            }

            Method (NWAK, 1, NotSerialized)
            {
                AWAK (Arg0)
            }

            Name (CPRB, One)
            Name (LVGA, 0x01)
            Name (STAV, 0x0F)
            Name (BRB, 0x0000)
            Name (BRL, 0x0100)
            Name (IOB, 0x1000)
            Name (IOL, 0xF000)
            Name (MBB, 0xA0000000)
            Name (MBL, 0x40000000)
            Name (MAB, 0x0000000860000000)
            Name (MAL, 0x00000077A0000000)
            Name (MAM, 0x0000007FFFFFFFFF)
            Name (NRSB, 0x96F88000)
            OperationRegion (NRSV, SystemMemory, NRSB, 0x1000)
            Field (NRSV, AnyAcc, NoLock, Preserve)
            {
                RSTE,   32, 
                Offset (0x08), 
                Offset (0x10), 
                RSB0,   32, 
                Offset (0x18), 
                RSS0,   32, 
                Offset (0x20), 
                RSB1,   32, 
                Offset (0x28), 
                RSS1,   32, 
                Offset (0x30), 
                RSB2,   32, 
                Offset (0x38), 
                RSS2,   32, 
                Offset (0x40), 
                RSB3,   32, 
                Offset (0x48), 
                RSS3,   32, 
                Offset (0x50)
            }

            Name (CRS1, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x007F,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0080,             // Length
                    ,, _Y01)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x03AF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x03B0,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x03E0,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0918,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y03, TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0x0FFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0300,             // Length
                    ,, _Y02, TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y04, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x02000000,         // Range Minimum
                    0xFFDFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFDE00000,         // Length
                    ,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x02000000,         // Range Minimum
                    0xFFDFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFDE00000,         // Length
                    ,, _Y06, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y07, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y08, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000000, // Length
                    ,, _Y09, AddressRangeMemory, TypeStatic)
            })
            Name (CRS2, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0080,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0080,             // Length
                    ,, _Y0A)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y0C, TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y0B, TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y0D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x80000000,         // Range Minimum
                    0xFFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x80000000,         // Length
                    ,, _Y0E, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x80000000,         // Range Minimum
                    0xFFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x80000000,         // Length
                    ,, _Y0F, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000000, // Length
                    ,, _Y10, AddressRangeMemory, TypeStatic)
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (STAV) /* \_SB_.PCI0.STAV */
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                DBG8 = 0x25
                If (CPRB)
                {
                    CreateWordField (CRS1, \_SB.PCI0._Y01._MIN, MIN0)  // _MIN: Minimum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y01._MAX, MAX0)  // _MAX: Maximum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y01._LEN, LEN0)  // _LEN: Length
                    MIN0 = BRB /* \_SB_.PCI0.BRB_ */
                    LEN0 = BRL /* \_SB_.PCI0.BRL_ */
                    Local0 = LEN0 /* \_SB_.PCI0._CRS.LEN0 */
                    MAX0 = (MIN0 + Local0--)
                    CreateWordField (CRS1, \_SB.PCI0._Y02._MIN, MIN1)  // _MIN: Minimum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y02._MAX, MAX1)  // _MAX: Maximum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y02._LEN, LEN1)  // _LEN: Length
                    If ((IOB == 0x1000))
                    {
                        Local0 = IOL /* \_SB_.PCI0.IOL_ */
                        MAX1 = (IOB + Local0--)
                        Local0 = (MAX1 - MIN1) /* \_SB_.PCI0._CRS.MIN1 */
                        LEN1 = (Local0 + One)
                    }
                    Else
                    {
                        MIN1 = IOB /* \_SB_.PCI0.IOB_ */
                        LEN1 = IOL /* \_SB_.PCI0.IOL_ */
                        Local0 = LEN1 /* \_SB_.PCI0._CRS.LEN1 */
                        MAX1 = (MIN1 + Local0--)
                    }

                    If (((LVGA == One) || (LVGA == 0x55)))
                    {
                        If (VGAF)
                        {
                            CreateWordField (CRS1, \_SB.PCI0._Y03._MIN, IMN1)  // _MIN: Minimum Base Address
                            CreateWordField (CRS1, \_SB.PCI0._Y03._MAX, IMX1)  // _MAX: Maximum Base Address
                            CreateWordField (CRS1, \_SB.PCI0._Y03._LEN, ILN1)  // _LEN: Length
                            IMN1 = 0x03B0
                            IMX1 = 0x03DF
                            ILN1 = 0x30
                            CreateDWordField (CRS1, \_SB.PCI0._Y04._MIN, VMN1)  // _MIN: Minimum Base Address
                            CreateDWordField (CRS1, \_SB.PCI0._Y04._MAX, VMX1)  // _MAX: Maximum Base Address
                            CreateDWordField (CRS1, \_SB.PCI0._Y04._LEN, VLN1)  // _LEN: Length
                            VMN1 = 0x000A0000
                            VMX1 = 0x000BFFFF
                            VLN1 = 0x00020000
                            VGAF = Zero
                        }
                    }

                    CreateDWordField (CRS1, \_SB.PCI0._Y05._MIN, MIN3)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y05._MAX, MAX3)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y05._LEN, LEN3)  // _LEN: Length
                    CreateDWordField (CRS1, \_SB.PCI0._Y06._MIN, MIN7)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y06._MAX, MAX7)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y06._LEN, LEN7)  // _LEN: Length
                    CreateDWordField (CRS1, \_SB.PCI0._Y07._MIN, MIN9)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y07._MAX, MAX9)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y07._LEN, LEN9)  // _LEN: Length
                    CreateDWordField (CRS1, \_SB.PCI0._Y08._MIN, MINA)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y08._MAX, MAXA)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y08._LEN, LENA)  // _LEN: Length
                    Local7 = Zero
                    If ((NRSB != 0x00010000))
                    {
                        If ((RSTE == One))
                        {
                            Local7 = One
                            MIN3 = RSB0 /* \_SB_.PCI0.RSB0 */
                            LEN3 = RSS0 /* \_SB_.PCI0.RSS0 */
                            Local0 = (RSB0 + RSS0) /* \_SB_.PCI0.RSS0 */
                            If ((Local0 != Zero))
                            {
                                Local0 -= One
                            }

                            MAX3 = Local0
                            MIN7 = RSB1 /* \_SB_.PCI0.RSB1 */
                            LEN7 = RSS1 /* \_SB_.PCI0.RSS1 */
                            Local0 = (RSB1 + RSS1) /* \_SB_.PCI0.RSS1 */
                            If ((Local0 != Zero))
                            {
                                Local0 -= One
                            }

                            MAX7 = Local0
                            MIN9 = RSB2 /* \_SB_.PCI0.RSB2 */
                            LEN9 = RSS2 /* \_SB_.PCI0.RSS2 */
                            Local0 = (RSB2 + RSS2) /* \_SB_.PCI0.RSS2 */
                            If ((Local0 != Zero))
                            {
                                Local0 -= One
                            }

                            MAX9 = Local0
                            MINA = RSB3 /* \_SB_.PCI0.RSB3 */
                            LENA = RSS3 /* \_SB_.PCI0.RSS3 */
                            Local0 = (RSB3 + RSS3) /* \_SB_.PCI0.RSS3 */
                            If ((Local0 != Zero))
                            {
                                Local0 -= One
                            }

                            MAXA = Local0
                        }
                    }

                    If ((Local7 == Zero))
                    {
                        Local0 = (MBB + MBL) /* \_SB_.PCI0.MBL_ */
                        If ((Local0 < NBTP))
                        {
                            MIN3 = MBB /* \_SB_.PCI0.MBB_ */
                            LEN3 = MBL /* \_SB_.PCI0.MBL_ */
                            Local0 = LEN3 /* \_SB_.PCI0._CRS.LEN3 */
                            MAX3 = (MIN3 + Local0--)
                            MIN7 = Zero
                            MAX7 = Zero
                            LEN7 = Zero
                        }
                        Else
                        {
                            MIN3 = MBB /* \_SB_.PCI0.MBB_ */
                            LEN3 = (NBTP - MBB)
                            Local0 = LEN3 /* \_SB_.PCI0._CRS.LEN3 */
                            MAX3 = (MIN3 + Local0--)
                            If (((MBL - LEN3) < 0x00200000))
                            {
                                MIN7 = Zero
                                MAX7 = Zero
                                LEN7 = Zero
                            }
                            Else
                            {
                                MIN7 = 0xFEE00000
                                Local0 = (0xFEE00000 - NBTP)
                                LEN7 = (MBL - Local0)
                                LEN7 = (LEN7 - LEN3)
                                Local0 = LEN7 /* \_SB_.PCI0._CRS.LEN7 */
                                MAX7 = (MIN7 + Local0--)
                            }
                        }
                    }

                    If (MAL)
                    {
                        CreateQWordField (CRS1, \_SB.PCI0._Y09._MIN, MN8)  // _MIN: Minimum Base Address
                        CreateQWordField (CRS1, \_SB.PCI0._Y09._MAX, MX8)  // _MAX: Maximum Base Address
                        CreateQWordField (CRS1, \_SB.PCI0._Y09._LEN, LN8)  // _LEN: Length
                        MN8 = MAB /* \_SB_.PCI0.MAB_ */
                        LN8 = MAL /* \_SB_.PCI0.MAL_ */
                        MX8 = MAM /* \_SB_.PCI0.MAM_ */
                    }

                    DBG8 = 0x24
                    Return (CRS1) /* \_SB_.PCI0.CRS1 */
                }
                Else
                {
                    CreateWordField (CRS2, \_SB.PCI0._Y0A._MIN, MIN2)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y0A._MAX, MAX2)  // _MAX: Maximum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y0A._LEN, LEN2)  // _LEN: Length
                    MIN2 = BRB /* \_SB_.PCI0.BRB_ */
                    LEN2 = BRL /* \_SB_.PCI0.BRL_ */
                    Local1 = LEN2 /* \_SB_.PCI0._CRS.LEN2 */
                    MAX2 = (MIN2 + Local1--)
                    CreateWordField (CRS2, \_SB.PCI0._Y0B._MIN, MIN4)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y0B._MAX, MAX4)  // _MAX: Maximum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y0B._LEN, LEN4)  // _LEN: Length
                    MIN4 = IOB /* \_SB_.PCI0.IOB_ */
                    LEN4 = IOL /* \_SB_.PCI0.IOL_ */
                    Local1 = LEN4 /* \_SB_.PCI0._CRS.LEN4 */
                    MAX4 = (MIN4 + Local1--)
                    If (LVGA)
                    {
                        CreateWordField (CRS2, \_SB.PCI0._Y0C._MIN, IMN2)  // _MIN: Minimum Base Address
                        CreateWordField (CRS2, \_SB.PCI0._Y0C._MAX, IMX2)  // _MAX: Maximum Base Address
                        CreateWordField (CRS2, \_SB.PCI0._Y0C._LEN, ILN2)  // _LEN: Length
                        IMN2 = 0x03B0
                        IMX2 = 0x03DF
                        ILN2 = 0x30
                        CreateDWordField (CRS2, \_SB.PCI0._Y0D._MIN, VMN2)  // _MIN: Minimum Base Address
                        CreateDWordField (CRS2, \_SB.PCI0._Y0D._MAX, VMX2)  // _MAX: Maximum Base Address
                        CreateDWordField (CRS2, \_SB.PCI0._Y0D._LEN, VLN2)  // _LEN: Length
                        VMN2 = 0x000A0000
                        VMX2 = 0x000BFFFF
                        VLN2 = 0x00020000
                    }

                    CreateDWordField (CRS2, \_SB.PCI0._Y0E._MIN, MIN5)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS2, \_SB.PCI0._Y0E._MAX, MAX5)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS2, \_SB.PCI0._Y0E._LEN, LEN5)  // _LEN: Length
                    MIN5 = MBB /* \_SB_.PCI0.MBB_ */
                    LEN5 = (NBTP - MBB)
                    Local1 = LEN5 /* \_SB_.PCI0._CRS.LEN5 */
                    MAX5 = (MIN5 + Local1--)
                    CreateDWordField (CRS2, \_SB.PCI0._Y0F._MIN, MIN6)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS2, \_SB.PCI0._Y0F._MAX, MAX6)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS2, \_SB.PCI0._Y0F._LEN, LEN6)  // _LEN: Length
                    MIN6 = (NBTP + NBTS) /* \NBTS */
                    LEN6 = (MBL - NBTS)
                    LEN6 = (LEN6 - LEN5)
                    Local0 = LEN6 /* \_SB_.PCI0._CRS.LEN6 */
                    MAX6 = (MIN6 + Local0--)
                    If (MAL)
                    {
                        CreateQWordField (CRS2, \_SB.PCI0._Y10._MIN, MN9)  // _MIN: Minimum Base Address
                        CreateQWordField (CRS2, \_SB.PCI0._Y10._MAX, MX9)  // _MAX: Maximum Base Address
                        CreateQWordField (CRS2, \_SB.PCI0._Y10._LEN, LN9)  // _LEN: Length
                        MN9 = MAB /* \_SB_.PCI0.MAB_ */
                        LN9 = MAL /* \_SB_.PCI0.MAL_ */
                        MX9 = MAM /* \_SB_.PCI0.MAM_ */
                    }

                    DBG8 = 0x23
                    Return (CRS2) /* \_SB_.PCI0.CRS2 */
                }
            }

            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Name (SUPP, Zero)
                Name (CTRL, Zero)
                CreateDWordField (Arg3, Zero, CDW1)
                CreateDWordField (Arg3, 0x04, CDW2)
                CreateDWordField (Arg3, 0x08, CDW3)
                If ((Arg0 == ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
                {
                    SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                    If (((SUPP & 0x16) != 0x16))
                    {
                        CTRL &= 0x1E
                    }

                    If (!PEHP)
                    {
                        CTRL &= 0x1E
                    }

                    If (!SHPC)
                    {
                        CTRL &= 0x1D
                    }

                    If (!PEPM)
                    {
                        CTRL &= 0x1B
                    }

                    If (!PEER)
                    {
                        CTRL &= 0x15
                    }

                    If (!PECS)
                    {
                        CTRL &= 0x0F
                    }

                    If ((Arg1 != One))
                    {
                        CDW1 |= 0x08
                    }

                    If ((CDW3 != CTRL))
                    {
                        CDW1 |= 0x10
                    }

                    CDW3 = CTRL /* \_SB_.PCI0._OSC.CTRL */
                    Return (Arg3)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Arg3)
                }

                If ((Arg0 == ToUUID ("0811b06e-4a27-44f9-8d60-3cbbc22e7b48") /* Platform-wide Capabilities */))
                {
                    Local1 = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                    If ((Arg1 == One))
                    {
                        Local1 |= 0x00080000
                        If ((Local1 != CDW2))
                        {
                            CDW2 = Local1
                            CDW1 |= 0x10
                        }
                    }
                    Else
                    {
                        CDW1 |= 0x08
                    }
                }
                Else
                {
                    CDW1 |= 0x04
                }
            }

            Mutex (NAPM, 0x00)
            Method (NAPE, 0, NotSerialized)
            {
                Acquire (NAPM, 0xFFFF)
                DBG8 = 0x11
                Local0 = (PEBS + 0xB8)
                OperationRegion (VARM, SystemMemory, Local0, 0x08)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    NAPX,   32, 
                    NAPD,   32
                }

                Local1 = NAPX /* \_SB_.PCI0.NAPE.NAPX */
                NAPX = 0x14300000
                Local0 = NAPD /* \_SB_.PCI0.NAPE.NAPD */
                Local0 &= 0xFFFFFFEF
                NAPD = Local0
                NAPX = Local1
                DBG8 = 0x12
                Release (NAPM)
            }

            Device (IOMA)
            {
                Name (_ADR, 0x02)  // _ADR: Address
            }

            Device (D002)
            {
                Name (_ADR, Zero)  // _ADR: Address
            }

            Device (GPP1)
            {
                Name (_ADR, 0x00010002)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR12) /* \_SB_.AR12 */
                    }

                    Return (PD12) /* \_SB_.PD12 */
                }

                Device (D004)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPP2)
            {
                Name (_ADR, 0x00010003)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR14) /* \_SB_.AR14 */
                    }

                    Return (PD14) /* \_SB_.PD14 */
                }

                Device (D006)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPP3)
            {
                Name (_ADR, 0x00010004)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR16) /* \_SB_.AR16 */
                    }

                    Return (PD16) /* \_SB_.PD16 */
                }

                Device (D008)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPP4)
            {
                Name (_ADR, 0x00010005)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR18) /* \_SB_.AR18 */
                    }

                    Return (PD18) /* \_SB_.PD18 */
                }

                Device (D00A)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }

                Device (D00C)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (BR0B)
            {
                Name (_ADR, 0x00010006)  // _ADR: Address
            }

            Device (GPP7)
            {
                Name (_ADR, 0x00020003)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR24) /* \_SB_.AR24 */
                    }

                    Return (PD24) /* \_SB_.PD24 */
                }

                Device (DEV0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                }
            }

            Device (GPP8)
            {
                Name (_ADR, 0x00020004)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR26) /* \_SB_.AR26 */
                    }

                    Return (PD26) /* \_SB_.PD26 */
                }

                Device (D011)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPP9)
            {
                Name (_ADR, 0x00020005)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR28) /* \_SB_.AR28 */
                    }

                    Return (PD28) /* \_SB_.PD28 */
                }

                Device (D013)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPPA)
            {
                Name (_ADR, 0x00020006)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR2A) /* \_SB_.AR2A */
                    }

                    Return (PD2A) /* \_SB_.PD2A */
                }

                Device (D015)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GP11)
            {
                Name (_ADR, 0x00030001)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR30) /* \_SB_.AR30 */
                    }

                    Return (PD30) /* \_SB_.PD30 */
                }

                Device (D017)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GP12)
            {
                Name (_ADR, 0x00040001)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR60) /* \_SB_.AR60 */
                    }

                    Return (PD60) /* \_SB_.PD60 */
                }

                Device (D019)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GP17)
            {
                Name (_ADR, 0x00080001)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR90) /* \_SB_.AR90 */
                    }

                    Return (PD90) /* \_SB_.PD90 */
                }

                Device (VGA)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (AF7E, 0x80000001)
                    Name (DOSA, Zero)
                    Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                    {
                        DOSA = Arg0
                    }

                    Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                    {
                        M460 ("PLA-ASL-\\_SB.PCI0.GP17.VGA._DOD\n", Zero, Zero, Zero, Zero, Zero, Zero)
                        Return (Package (0x07)
                        {
                            0x00010110, 
                            0x00010210, 
                            0x00010220, 
                            0x00010230, 
                            0x00010240, 
                            0x00031000, 
                            0x00032000
                        })
                    }

                    Device (LCD)
                    {
                        Name (_ADR, 0x0110)  // _ADR: Address
                        Name (BCLB, Package (0x34)
                        {
                            0x5A, 
                            0x3C, 
                            0x02, 
                            0x04, 
                            0x06, 
                            0x08, 
                            0x0A, 
                            0x0C, 
                            0x0E, 
                            0x10, 
                            0x12, 
                            0x14, 
                            0x16, 
                            0x18, 
                            0x1A, 
                            0x1C, 
                            0x1E, 
                            0x20, 
                            0x22, 
                            0x24, 
                            0x26, 
                            0x28, 
                            0x2A, 
                            0x2C, 
                            0x2E, 
                            0x30, 
                            0x32, 
                            0x34, 
                            0x36, 
                            0x38, 
                            0x3A, 
                            0x3C, 
                            0x3E, 
                            0x40, 
                            0x42, 
                            0x44, 
                            0x46, 
                            0x48, 
                            0x4A, 
                            0x4C, 
                            0x4E, 
                            0x50, 
                            0x52, 
                            0x54, 
                            0x56, 
                            0x58, 
                            0x5A, 
                            0x5C, 
                            0x5E, 
                            0x60, 
                            0x62, 
                            0x64
                        })
                        Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                        {
                            M460 ("PLA-ASL-\\_SB.PCI0.GP17.VGA.LCD._BCL\n", Zero, Zero, Zero, Zero, Zero, Zero)
                            Return (BCLB) /* \_SB_.PCI0.GP17.VGA_.LCD_.BCLB */
                        }

                        Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                        {
                            If ((AF7E == 0x80000001))
                            {
                                M460 ("PLA-ASL-\\_SB.PCI0.GP17.VGA.LCD._BCM Arg0 = 0x%X\n", ToInteger (Arg0), Zero, Zero, Zero, Zero, Zero)
                                Divide ((Arg0 * 0xFF), 0x64, Local1, Local0)
                                AFN7 (Local0)
                            }
                        }
                    }
                }

                Device (HDAU)
                {
                    Name (_ADR, One)  // _ADR: Address
                }

                Device (ACP)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                }

                Device (AZAL)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                }

                Device (MP2C)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                }

                Device (XHC0)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                }

                Device (XHC1)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                }

                Device (APSP)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (PSPB, 0xFD300000)
                    Name (PSPL, 0x00100000)
                    Name (_STA, 0x0F)  // _STA: Status
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y11)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.PCI0.GP17.APSP._Y11._BAS, PBAS)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.PCI0.GP17.APSP._Y11._LEN, PLEN)  // _LEN: Length
                        PBAS = PSPB /* \_SB_.PCI0.GP17.APSP.PSPB */
                        PLEN = PSPL /* \_SB_.PCI0.GP17.APSP.PSPL */
                        Return (CRS) /* \_SB_.PCI0.GP17.APSP.CRS_ */
                    }
                }
            }

            Device (GP18)
            {
                Name (_ADR, 0x00080002)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR92) /* \_SB_.AR92 */
                    }

                    Return (PD92) /* \_SB_.PD92 */
                }

                Device (NPU)
                {
                    Name (_ADR, One)  // _ADR: Address
                }
            }

            Device (GP19)
            {
                Name (_ADR, 0x00080003)  // _ADR: Address
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Return (Buffer (One)
                                {
                                     0xFF                                             // .
                                })
                            }
                            Case (0x05)
                            {
                                Return (Zero)
                            }
                            Default
                            {
                                Return (Zero)
                            }

                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR94) /* \_SB_.AR94 */
                    }

                    Return (PD94) /* \_SB_.PD94 */
                }

                Device (XHC2)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                }

                Device (XHC3)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                }

                Device (XHC4)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                }

                Device (NHI0)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                }

                Device (NHI1)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                }

                Device (D033)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                }
            }

            Device (D029)
            {
                Name (_ADR, 0x00140000)  // _ADR: Address
            }

            Device (D02B)
            {
                Name (_ADR, 0x00140006)  // _ADR: Address
            }

            Device (SBRG)
            {
                Name (_ADR, 0x00140003)  // _ADR: Address
                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (DMAD)
                {
                    Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        DMA (Compatibility, BusMaster, Transfer8, )
                            {4}
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0087,             // Range Minimum
                            0x0087,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0089,             // Range Minimum
                            0x0089,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x008F,             // Range Minimum
                            0x008F,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x00,               // Alignment
                            0x20,               // Length
                            )
                    })
                }

                Device (TMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x00,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (RTC0)
                {
                    Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Name (BUF1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If ((HPEN == One))
                        {
                            Return (BUF0) /* \_SB_.PCI0.SBRG.RTC0.BUF0 */
                        }

                        Return (BUF1) /* \_SB_.PCI0.SBRG.RTC0.BUF1 */
                    }
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800") /* Microsoft Sound System Compatible Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                OperationRegion (SMI0, SystemIO, SMIO, One)
                Field (SMI0, ByteAcc, NoLock, Preserve)
                {
                    SMIC,   8
                }

                Scope (\_SB)
                {
                    Scope (PCI0)
                    {
                        Device (S900)
                        {
                            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                            Name (_UID, 0x0700)  // _UID: Unique ID
                            Name (_STA, 0x0F)  // _STA: Status
                            Name (CRS, ResourceTemplate ()
                            {
                                IO (Decode16,
                                    0x0010,             // Range Minimum
                                    0x0010,             // Range Maximum
                                    0x00,               // Alignment
                                    0x10,               // Length
                                    )
                                IO (Decode16,
                                    0x0022,             // Range Minimum
                                    0x0022,             // Range Maximum
                                    0x00,               // Alignment
                                    0x1E,               // Length
                                    )
                                IO (Decode16,
                                    0x0063,             // Range Minimum
                                    0x0063,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0065,             // Range Minimum
                                    0x0065,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0067,             // Range Minimum
                                    0x0067,             // Range Maximum
                                    0x00,               // Alignment
                                    0x09,               // Length
                                    )
                                IO (Decode16,
                                    0x0072,             // Range Minimum
                                    0x0072,             // Range Maximum
                                    0x00,               // Alignment
                                    0x0E,               // Length
                                    )
                                IO (Decode16,
                                    0x0080,             // Range Minimum
                                    0x0080,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0084,             // Range Minimum
                                    0x0084,             // Range Maximum
                                    0x00,               // Alignment
                                    0x03,               // Length
                                    )
                                IO (Decode16,
                                    0x0088,             // Range Minimum
                                    0x0088,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x008C,             // Range Minimum
                                    0x008C,             // Range Maximum
                                    0x00,               // Alignment
                                    0x03,               // Length
                                    )
                                IO (Decode16,
                                    0x0090,             // Range Minimum
                                    0x0090,             // Range Maximum
                                    0x00,               // Alignment
                                    0x10,               // Length
                                    )
                                IO (Decode16,
                                    0x00A2,             // Range Minimum
                                    0x00A2,             // Range Maximum
                                    0x00,               // Alignment
                                    0x1E,               // Length
                                    )
                                IO (Decode16,
                                    0x00B1,             // Range Minimum
                                    0x00B1,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x00E0,             // Range Minimum
                                    0x00E0,             // Range Maximum
                                    0x00,               // Alignment
                                    0x10,               // Length
                                    )
                                IO (Decode16,
                                    0x04D0,             // Range Minimum
                                    0x04D0,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x040B,             // Range Minimum
                                    0x040B,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x04D6,             // Range Minimum
                                    0x04D6,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0C00,             // Range Minimum
                                    0x0C00,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0C14,             // Range Minimum
                                    0x0C14,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0C50,             // Range Minimum
                                    0x0C50,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0C52,             // Range Minimum
                                    0x0C52,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0C6C,             // Range Minimum
                                    0x0C6C,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0C6F,             // Range Minimum
                                    0x0C6F,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0CD0,             // Range Minimum
                                    0x0CD0,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0CD2,             // Range Minimum
                                    0x0CD2,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0CD4,             // Range Minimum
                                    0x0CD4,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0CD6,             // Range Minimum
                                    0x0CD6,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0CD8,             // Range Minimum
                                    0x0CD8,             // Range Maximum
                                    0x00,               // Alignment
                                    0x08,               // Length
                                    )
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    _Y12)
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    _Y14)
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    _Y13)
                                IO (Decode16,
                                    0x0900,             // Range Minimum
                                    0x0900,             // Range Maximum
                                    0x00,               // Alignment
                                    0x10,               // Length
                                    )
                                IO (Decode16,
                                    0x0910,             // Range Minimum
                                    0x0910,             // Range Maximum
                                    0x00,               // Alignment
                                    0x10,               // Length
                                    )
                                IO (Decode16,
                                    0x0060,             // Range Minimum
                                    0x0060,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    )
                                IO (Decode16,
                                    0x0064,             // Range Minimum
                                    0x0064,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    )
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y15)
                                Memory32Fixed (ReadWrite,
                                    0xFEC01000,         // Address Base
                                    0x00001000,         // Address Length
                                    )
                                Memory32Fixed (ReadWrite,
                                    0xFEDC0000,         // Address Base
                                    0x00001000,         // Address Length
                                    )
                                Memory32Fixed (ReadWrite,
                                    0xFEE00000,         // Address Base
                                    0x00001000,         // Address Length
                                    )
                                Memory32Fixed (ReadWrite,
                                    0xFED80000,         // Address Base
                                    0x00010000,         // Address Length
                                    )
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y16)
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y17)
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y18)
                            })
                            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                            {
                                CreateWordField (CRS, \_SB.PCI0.S900._Y12._MIN, PBB)  // _MIN: Minimum Base Address
                                CreateWordField (CRS, \_SB.PCI0.S900._Y12._MAX, PBH)  // _MAX: Maximum Base Address
                                CreateByteField (CRS, \_SB.PCI0.S900._Y12._LEN, PML)  // _LEN: Length
                                PBB = PMBS /* \PMBS */
                                PBH = PMBS /* \PMBS */
                                PML = PMLN /* \PMLN */
                                If (SMBB)
                                {
                                    CreateWordField (CRS, \_SB.PCI0.S900._Y13._MIN, SMB1)  // _MIN: Minimum Base Address
                                    CreateWordField (CRS, \_SB.PCI0.S900._Y13._MAX, SMH1)  // _MAX: Maximum Base Address
                                    CreateByteField (CRS, \_SB.PCI0.S900._Y13._LEN, SML1)  // _LEN: Length
                                    SMB1 = SMBB /* \SMBB */
                                    SMH1 = SMBB /* \SMBB */
                                    SML1 = SMBL /* \SMBL */
                                    CreateWordField (CRS, \_SB.PCI0.S900._Y14._MIN, SMBZ)  // _MIN: Minimum Base Address
                                    CreateWordField (CRS, \_SB.PCI0.S900._Y14._MAX, SMH0)  // _MAX: Maximum Base Address
                                    CreateByteField (CRS, \_SB.PCI0.S900._Y14._LEN, SML0)  // _LEN: Length
                                    SMBZ = SMB0 /* \SMB0 */
                                    SMH0 = SMB0 /* \SMB0 */
                                    SML0 = SMBM /* \SMBM */
                                }

                                If (APCB)
                                {
                                    CreateDWordField (CRS, \_SB.PCI0.S900._Y15._BAS, APB)  // _BAS: Base Address
                                    CreateDWordField (CRS, \_SB.PCI0.S900._Y15._LEN, APL)  // _LEN: Length
                                    APB = APCB /* \APCB */
                                    APL = APCL /* \APCL */
                                }

                                CreateDWordField (CRS, \_SB.PCI0.S900._Y16._BAS, SPIB)  // _BAS: Base Address
                                CreateDWordField (CRS, \_SB.PCI0.S900._Y16._LEN, SPIL)  // _LEN: Length
                                SPIB = 0xFEC10000
                                SPIL = 0x1000
                                If (WDTB)
                                {
                                    CreateDWordField (CRS, \_SB.PCI0.S900._Y17._BAS, WDTB)  // _BAS: Base Address
                                    CreateDWordField (CRS, \_SB.PCI0.S900._Y17._LEN, WDTL)  // _LEN: Length
                                    WDTB = \WDTB
                                    WDTL = \WDTL
                                }

                                CreateDWordField (CRS, \_SB.PCI0.S900._Y18._BAS, ROMB)  // _BAS: Base Address
                                CreateDWordField (CRS, \_SB.PCI0.S900._Y18._LEN, ROML)  // _LEN: Length
                                ROMB = 0xFF000000
                                ROML = 0x01000000
                                Return (CRS) /* \_SB_.PCI0.S900.CRS_ */
                            }
                        }
                    }
                }

                Scope (\_SB)
                {
                    Scope (PCI0)
                    {
                        Scope (SBRG)
                        {
                            Method (RRIO, 4, NotSerialized)
                            {
                                Debug = "RRIO"
                            }

                            Method (RDMA, 3, NotSerialized)
                            {
                                Debug = "rDMA"
                            }
                        }
                    }
                }

                Device (PS2K)
                {
                    Name (_HID, "MSFT0001")  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Shared, )
                            {1}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x0060,             // Range Minimum
                                0x0060,             // Range Maximum
                                0x00,               // Alignment
                                0x01,               // Length
                                )
                            IO (Decode16,
                                0x0064,             // Range Minimum
                                0x0064,             // Range Maximum
                                0x00,               // Alignment
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {1}
                        }
                        EndDependentFn ()
                    })
                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        KBFG = Arg0
                    }
                }

                Scope (\)
                {
                    Name (KBFG, One)
                }
            }

            Device (GPP5)
            {
                Name (_ADR, 0x00020001)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR20) /* \_SB_.AR20 */
                    }

                    Return (PD20) /* \_SB_.PD20 */
                }

                Device (D00D)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }

                Device (GLAN)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                }
            }

            Device (GPP6)
            {
                Name (_ADR, 0x00020002)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR22) /* \_SB_.AR22 */
                    }

                    Return (PD22) /* \_SB_.PD22 */
                }

                Device (D00E)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }

                Device (WLAN)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (WRDY, Package (0x02)
                    {
                        Zero, 
                        Package (0x0C)
                        {
                            0x07, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero
                        }
                    })
                    Method (WRDS, 0, Serialized)
                    {
                        Return (WRDY) /* \_SB_.PCI0.GPP6.WLAN.WRDY */
                    }

                    Method (EDSM, 1, Serialized)
                    {
                        If ((Arg0 == ToUUID ("f21202bf-8f78-4dc6-a5b3-1f738e285ade") /* Unknown UUID */))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (EFUN, 4, Serialized)
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == Zero))
                            {
                                Return (Buffer (0x02)
                                {
                                     0xFF, 0x01                                       // ..
                                })
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }
                        }

                        If ((Arg2 == 0x03))
                        {
                            Local0 = UHBS /* External reference */
                            Return (Local0)
                        }
                    }

                    Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                    {
                        If (EDSM (Arg0))
                        {
                            Return (EFUN (Arg0, Arg1, Arg2, Arg3))
                        }
                    }

                    Method (MTDS, 0, Serialized)
                    {
                        Name (MTDY, Package (0x1F)
                        {
                            0x4D, 
                            0x54, 
                            0x44, 
                            0x53, 
                            Zero, 
                            Zero, 
                            0x02, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            0x02, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        If (One)
                        {
                            MTDY [0x04] = SARS /* External reference */
                            MTDY [0x08] = S24G /* External reference */
                            MTDY [0x09] = S5G1 /* External reference */
                            MTDY [0x0A] = S5G2 /* External reference */
                            MTDY [0x0B] = S5G3 /* External reference */
                            MTDY [0x0C] = S5G4 /* External reference */
                            MTDY [0x0D] = S6G1 /* External reference */
                            MTDY [0x0E] = S6G2 /* External reference */
                            MTDY [0x0F] = S6G3 /* External reference */
                            MTDY [0x10] = S6G4 /* External reference */
                            MTDY [0x11] = S6G5 /* External reference */
                            MTDY [0x12] = S6G6 /* External reference */
                            MTDY [0x14] = S24G /* External reference */
                            MTDY [0x15] = S5G1 /* External reference */
                            MTDY [0x16] = S5G2 /* External reference */
                            MTDY [0x17] = S5G3 /* External reference */
                            MTDY [0x18] = S5G4 /* External reference */
                            MTDY [0x19] = S6G1 /* External reference */
                            MTDY [0x1A] = S6G2 /* External reference */
                            MTDY [0x1B] = S6G3 /* External reference */
                            MTDY [0x1C] = S6G4 /* External reference */
                            MTDY [0x1D] = S6G5 /* External reference */
                            MTDY [0x1E] = S6G6 /* External reference */
                        }

                        Return (MTDY) /* \_SB_.PCI0.GPP6.WLAN.MTDS.MTDY */
                    }

                    Method (MTCL, 0, Serialized)
                    {
                        Name (MTCY, Package (0x0C)
                        {
                            0x4D, 
                            0x54, 
                            0x43, 
                            0x4C, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        MTCY [0x05] = CLSP /* External reference */
                        MTCY [0x06] = CL01 /* External reference */
                        MTCY [0x07] = CL02 /* External reference */
                        MTCY [0x08] = CL03 /* External reference */
                        MTCY [0x09] = CL04 /* External reference */
                        Return (MTCY) /* \_SB_.PCI0.GPP6.WLAN.MTCL.MTCY */
                    }
                }
            }

            Device (GPP0)
            {
                Name (_ADR, 0x00010001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR10) /* \_SB_.AR10 */
                    }

                    Return (PD10) /* \_SB_.PD10 */
                }

                Device (PEGP)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                }
            }
        }
    }

    Scope (_GPE)
    {
        Method (XL08, 0, NotSerialized)
        {
            Notify (\_SB.PCI0.GPP0, 0x02) // Device Wake
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }
    }

    Scope (_SB)
    {
        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C") /* Power Button Device */)  // _HID: Hardware ID
            Name (_UID, 0xAA)  // _UID: Unique ID
            Name (_STA, 0x0B)  // _STA: Status
        }
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    Name (XS3, Package (0x04)
    {
        0x03, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x04, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x05, 
        Zero, 
        Zero, 
        Zero
    })
    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If (Arg0)
        {
            \_SB.PCI0.SBRG.EC0.EPTS (Arg0)
            \_SB.TPM.TPTS (Arg0)
            SPTS (Arg0)
            \_SB.PCI0.NPTS (Arg0)
        }
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        DBG8 = (Arg0 << 0x04)
        \_SB.PCI0.NWAK (Arg0)
        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            If ((PICM != Zero))
            {
                \_SB.PCI0.NAPE ()
            }
        }

        DBG8 = (Arg0 << 0x04)
        SWAK (Arg0)
        If ((Arg0 == 0x04))
        {
            \_SB.PCI0.SBRG.EC0.XSEC = \_SB.PCI0.SBRG.EC0.OSEC
        }

        \_SB.AC0.ACDC = 0xFF
        If ((ECON == One))
        {
            If ((\_SB.PCI0.SBRG.EC0.SLID == Zero))
            {
                \_SB.LID1.LIDS = One
            }
            Else
            {
                \_SB.LID1.LIDS = Zero
            }

            Notify (\_SB.LID1, 0x80) // Status Change
        }

        \_SB.PCI0.SBRG.EC0.EWAK (Arg0)
        Return (WAKP) /* \WAKP */
    }

    Scope (_SB)
    {
        OperationRegion (PIRQ, SystemIO, 0x0C00, 0x02)
        Field (PIRQ, ByteAcc, NoLock, Preserve)
        {
            PIDX,   8, 
            PDAT,   8
        }

        IndexField (PIDX, PDAT, ByteAcc, NoLock, Preserve)
        {
            PIRA,   8, 
            PIRB,   8, 
            PIRC,   8, 
            PIRD,   8, 
            PIRE,   8, 
            PIRF,   8, 
            PIRG,   8, 
            PIRH,   8, 
            Offset (0x0C), 
            SIRA,   8, 
            SIRB,   8, 
            SIRC,   8, 
            SIRD,   8, 
            PIRS,   8, 
            Offset (0x13), 
            HDAD,   8, 
            Offset (0x17), 
            SDCL,   8, 
            Offset (0x1A), 
            SDIO,   8, 
            Offset (0x30), 
            USB1,   8, 
            Offset (0x34), 
            USB3,   8, 
            Offset (0x41), 
            SATA,   8, 
            Offset (0x62), 
            GIOC,   8, 
            Offset (0x70), 
            I2C0,   8, 
            I2C1,   8, 
            I2C2,   8, 
            I2C3,   8, 
            URT0,   8, 
            URT1,   8, 
            Offset (0x80), 
            AIRA,   8, 
            AIRB,   8, 
            AIRC,   8, 
            AIRD,   8, 
            AIRE,   8, 
            AIRF,   8, 
            AIRG,   8, 
            AIRH,   8
        }

        OperationRegion (KBDD, SystemIO, 0x64, One)
        Field (KBDD, ByteAcc, NoLock, Preserve)
        {
            PD64,   8
        }

        Method (DSPI, 0, NotSerialized)
        {
            INTA (0x1F)
            INTB (0x1F)
            INTC (0x1F)
            INTD (0x1F)
            Local1 = PD64 /* \_SB_.PD64 */
            PIRE = 0x1F
            PIRF = 0x1F
            PIRG = 0x1F
            PIRH = 0x1F
            Local1 = PD64 /* \_SB_.PD64 */
            AIRA = 0x10
            AIRB = 0x11
            AIRC = 0x12
            AIRD = 0x13
            AIRE = 0x14
            AIRF = 0x15
            AIRG = 0x16
            AIRH = 0x17
        }

        Method (INTA, 1, NotSerialized)
        {
            PIRA = Arg0
            HDAD = Arg0
        }

        Method (INTB, 1, NotSerialized)
        {
            PIRB = Arg0
        }

        Method (INTC, 1, NotSerialized)
        {
            PIRC = Arg0
            USB1 = Arg0
            USB3 = Arg0
        }

        Method (INTD, 1, NotSerialized)
        {
            PIRD = Arg0
            SATA = Arg0
        }

        Name (BUFA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {15}
        })
        Name (IPRA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Name (IPRB, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Name (IPRC, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Name (IPRD, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRA)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSA) /* \_SB_.PRSA */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTA (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRA) /* \_SB_.PIRA */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                INTA (Local0)
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRB)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSB) /* \_SB_.PRSB */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTB (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRB) /* \_SB_.PIRB */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                INTB (Local0)
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRC)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSC) /* \_SB_.PRSC */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTC (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRC) /* \_SB_.PIRC */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                INTC (Local0)
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRD)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSD) /* \_SB_.PRSD */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTD (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRD) /* \_SB_.PIRD */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                INTD (Local0)
            }
        }

        Device (LNKE)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRE)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSE) /* \_SB_.PRSE */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRE = 0x1F
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRE) /* \_SB_.PIRE */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (PIRE, Local0)
                Local0--
                PIRE = Local0
            }
        }

        Device (LNKF)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x06)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRF)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSF) /* \_SB_.PRSF */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRF = 0x1F
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRF) /* \_SB_.PIRF */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRF = Local0
            }
        }

        Device (LNKG)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x07)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRG)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSG) /* \_SB_.PRSG */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRG = 0x1F
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRG) /* \_SB_.PIRG */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRG = Local0
            }
        }

        Device (LNKH)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x08)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRH)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSH) /* \_SB_.PRSH */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRH = 0x1F
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRH) /* \_SB_.PIRH */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRH = Local0
            }
        }
    }

    Name (OSTB, Ones)
    Name (TPOS, Zero)
    Name (OSSP, Zero)
    Method (SEQL, 2, Serialized)
    {
        Local0 = SizeOf (Arg0)
        Local1 = SizeOf (Arg1)
        If ((Local0 != Local1))
        {
            Return (Zero)
        }

        Name (BUF0, Buffer (Local0){})
        BUF0 = Arg0
        Name (BUF1, Buffer (Local0){})
        BUF1 = Arg1
        Local2 = Zero
        While ((Local2 < Local0))
        {
            Local3 = DerefOf (BUF0 [Local2])
            Local4 = DerefOf (BUF1 [Local2])
            If ((Local3 != Local4))
            {
                Return (Zero)
            }

            Local2++
        }

        Return (One)
    }

    Method (OSTP, 0, NotSerialized)
    {
        If ((OSTB == Ones))
        {
            If (CondRefOf (\_OSI, Local0))
            {
                OSTB = Zero
                TPOS = Zero
                If (_OSI ("Windows 2001"))
                {
                    OSTB = 0x08
                    TPOS = 0x08
                }

                If (_OSI ("Windows 2001.1"))
                {
                    OSTB = 0x20
                    TPOS = 0x20
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    OSTB = 0x10
                    TPOS = 0x10
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    OSTB = 0x11
                    TPOS = 0x11
                }

                If (_OSI ("Windows 2001 SP3"))
                {
                    OSTB = 0x12
                    TPOS = 0x12
                }

                If (_OSI ("Windows 2006"))
                {
                    OSTB = 0x40
                    TPOS = 0x40
                }

                If (_OSI ("Windows 2006 SP1"))
                {
                    OSTB = 0x41
                    TPOS = 0x41
                    OSSP = One
                }

                If (_OSI ("Windows 2009"))
                {
                    OSSP = One
                    OSTB = 0x50
                    TPOS = 0x50
                }

                If (_OSI ("Windows 2012"))
                {
                    OSSP = One
                    OSTB = 0x60
                    TPOS = 0x60
                }

                If (_OSI ("Windows 2013"))
                {
                    OSSP = One
                    OSTB = 0x61
                    TPOS = 0x61
                }

                If (_OSI ("Windows 2015"))
                {
                    OSSP = One
                    OSTB = 0x70
                    TPOS = 0x70
                }
            }
            ElseIf (CondRefOf (\_OS, Local0))
            {
                If (SEQL (_OS, "Microsoft Windows"))
                {
                    OSTB = One
                    TPOS = One
                }
                ElseIf (SEQL (_OS, "Microsoft WindowsME: Millennium Edition"))
                {
                    OSTB = 0x02
                    TPOS = 0x02
                }
                ElseIf (SEQL (_OS, "Microsoft Windows NT"))
                {
                    OSTB = 0x04
                    TPOS = 0x04
                }
                Else
                {
                    OSTB = Zero
                    TPOS = Zero
                }
            }
            Else
            {
                OSTB = Zero
                TPOS = Zero
            }
        }

        Return (OSTB) /* \OSTB */
    }

    Scope (_SB.PCI0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If ((PICM != Zero))
            {
                DSPI ()
                NAPE ()
            }

            OSTP ()
            OSFL ()
        }
    }

    Device (HPET)
    {
        Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If ((HPEN == One))
            {
                If ((OSVR >= 0x0C))
                {
                    Return (0x0F)
                }

                HPEN = Zero
                Return (One)
            }

            Return (One)
        }

        Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
        {
            Name (BUF0, ResourceTemplate ()
            {
                IRQNoFlags ()
                    {0}
                IRQNoFlags ()
                    {8}
                Memory32Fixed (ReadOnly,
                    0xFED00000,         // Address Base
                    0x00000400,         // Address Length
                    )
            })
            Return (BUF0) /* \HPET._CRS.BUF0 */
        }
    }

    Name (TSOS, 0x75)
    Name (UR0I, 0x03)
    Name (UR1I, 0x0E)
    Name (UR2I, 0x05)
    Name (UR3I, 0x0F)
    Name (UR4I, 0x0D)
    Name (IC0I, 0x0A)
    Name (IC1I, 0x0B)
    Name (IC2I, 0x04)
    Name (IC3I, 0x06)
    Name (IC4I, 0x0E)
    Name (HPTI, 0x00)
    Name (HCOR, 0x00)
    If (CondRefOf (\_OSI))
    {
        If (_OSI ("Windows 2009"))
        {
            TSOS = 0x50
        }

        If (_OSI ("Windows 2015"))
        {
            TSOS = 0x70
        }
    }

    Scope (_SB)
    {
        OperationRegion (SMIC, SystemMemory, 0xFED80000, 0x00800000)
        Field (SMIC, ByteAcc, NoLock, Preserve)
        {
            Offset (0x36A), 
            SMIB,   8
        }

        OperationRegion (SSMI, SystemIO, SMIB, 0x02)
        Field (SSMI, AnyAcc, NoLock, Preserve)
        {
            SMIW,   16
        }

        OperationRegion (ECMC, SystemIO, 0x72, 0x02)
        Field (ECMC, AnyAcc, NoLock, Preserve)
        {
            ECMI,   8, 
            ECMD,   8
        }

        IndexField (ECMI, ECMD, ByteAcc, NoLock, Preserve)
        {
            Offset (0x08), 
            FRTB,   32
        }

        OperationRegion (FRTP, SystemMemory, FRTB, 0x0100)
        Field (FRTP, AnyAcc, NoLock, Preserve)
        {
            PEBA,   32, 
                ,   5, 
            IC0E,   1, 
            IC1E,   1, 
            IC2E,   1, 
            IC3E,   1, 
            IC4E,   1, 
            IC5E,   1, 
            UT0E,   1, 
            UT1E,   1, 
            I31E,   1, 
            I32E,   1, 
            I33E,   1, 
            UT2E,   1, 
                ,   1, 
            EMMD,   2, 
            UT4E,   1, 
            I30E,   1, 
                ,   1, 
            XHCE,   1, 
                ,   1, 
                ,   1, 
            UT3E,   1, 
            ESPI,   1, 
            EMME,   1, 
            HFPE,   1, 
            HD0E,   1, 
            HD2E,   1, 
            PCEF,   1, 
                ,   4, 
            IC0D,   1, 
            IC1D,   1, 
            IC2D,   1, 
            IC3D,   1, 
            IC4D,   1, 
            IC5D,   1, 
            UT0D,   1, 
            UT1D,   1, 
            I31D,   1, 
            I32D,   1, 
            I33D,   1, 
            UT2D,   1, 
                ,   1, 
            EHCD,   1, 
                ,   1, 
            UT4D,   1, 
            I30D,   1, 
                ,   1, 
            XHCD,   1, 
            SD_D,   1, 
                ,   1, 
            UT3D,   1, 
                ,   1, 
            EMD3,   1, 
                ,   1, 
            US4D,   1, 
            S03D,   1, 
            UT0O,   1, 
            UT1O,   1, 
            UT2O,   1, 
            UT3O,   1, 
            Offset (0x1C), 
            I30M,   1, 
            I31M,   1, 
            I32M,   1, 
            I33M,   1, 
            Offset (0x2D), 
            UT0I,   1, 
            UT1I,   1, 
            UT2I,   1, 
            UT3I,   1, 
            UT4I,   1, 
            Offset (0x2E), 
            UL0I,   1, 
            UL1I,   1, 
            UL2I,   1, 
            UL3I,   1
        }

        OperationRegion (FCFG, SystemMemory, PEBA, 0x01000000)
        Field (FCFG, DWordAcc, NoLock, Preserve)
        {
            Offset (0xA3078), 
                ,   2, 
            LDQ0,   1, 
            Offset (0xA30CB), 
                ,   7, 
            AUSS,   1
        }

        OperationRegion (IOMX, SystemMemory, 0xFED80D00, 0x0100)
        Field (IOMX, AnyAcc, NoLock, Preserve)
        {
            Offset (0x15), 
            IM15,   8, 
            IM16,   8, 
            Offset (0x1F), 
            IM1F,   8, 
            IM20,   8, 
            Offset (0x44), 
            IM44,   8, 
            Offset (0x46), 
            IM46,   8, 
            Offset (0x4A), 
            IM4A,   8, 
            IM4B,   8, 
            Offset (0x57), 
            IM57,   8, 
            IM58,   8, 
            Offset (0x68), 
            IM68,   8, 
            IM69,   8, 
            IM6A,   8, 
            IM6B,   8, 
            Offset (0x6D), 
            IM6D,   8
        }

        OperationRegion (FACR, SystemMemory, 0xFED81E00, 0x0100)
        Field (FACR, AnyAcc, NoLock, Preserve)
        {
            Offset (0x80), 
                ,   28, 
            RD28,   1, 
                ,   1, 
            RQTY,   1, 
            Offset (0x84), 
                ,   28, 
            SD28,   1, 
                ,   1, 
            Offset (0xA0), 
            PG1A,   1
        }

        OperationRegion (LUIE, SystemMemory, 0xFEDC0020, 0x04)
        Field (LUIE, AnyAcc, NoLock, Preserve)
        {
            IER0,   1, 
            IER1,   1, 
            IER2,   1, 
            IER3,   1, 
            UOL0,   1, 
            UOL1,   1, 
            UOL2,   1, 
            UOL3,   1, 
            WUR0,   2, 
            WUR1,   2, 
            WUR2,   2, 
            WUR3,   2
        }

        Method (FRUI, 1, Serialized)
        {
            If ((Arg0 == Zero))
            {
                Return (IUA0) /* \_SB_.IUA0 */
            }
            ElseIf ((Arg0 == One))
            {
                Return (IUA1) /* \_SB_.IUA1 */
            }
            ElseIf ((Arg0 == 0x02))
            {
                Return (IUA2) /* \_SB_.IUA2 */
            }
            ElseIf ((Arg0 == 0x03))
            {
                Return (IUA3) /* \_SB_.IUA3 */
            }
            Else
            {
                Return (0x03)
            }
        }

        Method (FUIO, 1, Serialized)
        {
            If ((IER0 == One))
            {
                If ((WUR0 == Arg0))
                {
                    Return (Zero)
                }
            }

            If ((IER1 == One))
            {
                If ((WUR1 == Arg0))
                {
                    Return (One)
                }
            }

            If ((IER2 == One))
            {
                If ((WUR2 == Arg0))
                {
                    Return (0x02)
                }
            }

            If ((IER3 == One))
            {
                If ((WUR3 == Arg0))
                {
                    Return (0x03)
                }
            }

            Return (0x0F)
        }

        Method (SRAD, 2, Serialized)
        {
            Local0 = (Arg0 << One)
            Local0 += 0xFED81E40
            OperationRegion (ADCR, SystemMemory, Local0, 0x02)
            Field (ADCR, ByteAcc, NoLock, Preserve)
            {
                ADTD,   2, 
                ADPS,   1, 
                ADPD,   1, 
                ADSO,   1, 
                ADSC,   1, 
                ADSR,   1, 
                ADIS,   1, 
                ADDS,   3
            }

            ADIS = One
            ADSR = Zero
            Stall (Arg1)
            ADSR = One
            ADIS = Zero
            Stall (Arg1)
        }

        Method (DSAD, 2, Serialized)
        {
            Local0 = (Arg0 << One)
            Local0 += 0xFED81E40
            OperationRegion (ADCR, SystemMemory, Local0, 0x02)
            Field (ADCR, ByteAcc, NoLock, Preserve)
            {
                ADTD,   2, 
                ADPS,   1, 
                ADPD,   1, 
                ADSO,   1, 
                ADSC,   1, 
                ADSR,   1, 
                ADIS,   1, 
                ADDS,   3
            }

            If ((Arg1 != ADTD))
            {
                If ((Arg1 == Zero))
                {
                    ADTD = Zero
                    ADPD = One
                    Local0 = ADDS /* \_SB_.DSAD.ADDS */
                    While ((Local0 != 0x07))
                    {
                        Local0 = ADDS /* \_SB_.DSAD.ADDS */
                    }
                }

                If ((Arg1 == 0x03))
                {
                    ADPD = Zero
                    Local0 = ADDS /* \_SB_.DSAD.ADDS */
                    While ((Local0 != Zero))
                    {
                        Local0 = ADDS /* \_SB_.DSAD.ADDS */
                    }

                    ADTD = 0x03
                }
            }
        }

        Method (HSAD, 2, Serialized)
        {
            Local3 = (One << Arg0)
            Local0 = (Arg0 << One)
            Local0 += 0xFED81E40
            OperationRegion (ADCR, SystemMemory, Local0, 0x02)
            Field (ADCR, ByteAcc, NoLock, Preserve)
            {
                ADTD,   2, 
                ADPS,   1, 
                ADPD,   1, 
                ADSO,   1, 
                ADSC,   1, 
                ADSR,   1, 
                ADIS,   1, 
                ADDS,   3
            }

            If ((Arg1 != ADTD))
            {
                If ((Arg1 == Zero))
                {
                    PG1A = One
                    ADTD = Zero
                    ADPD = One
                    Local0 = ADDS /* \_SB_.HSAD.ADDS */
                    While ((Local0 != 0x07))
                    {
                        Local0 = ADDS /* \_SB_.HSAD.ADDS */
                    }

                    RQTY = One
                    RD28 = One
                    Local0 = SD28 /* \_SB_.SD28 */
                    While (!Local0)
                    {
                        Local0 = SD28 /* \_SB_.SD28 */
                    }
                }

                If ((Arg1 == 0x03))
                {
                    RQTY = Zero
                    RD28 = One
                    Local0 = SD28 /* \_SB_.SD28 */
                    While (Local0)
                    {
                        Local0 = SD28 /* \_SB_.SD28 */
                    }

                    ADPD = Zero
                    Local0 = ADDS /* \_SB_.HSAD.ADDS */
                    While ((Local0 != Zero))
                    {
                        Local0 = ADDS /* \_SB_.HSAD.ADDS */
                    }

                    ADTD = 0x03
                    PG1A = Zero
                }
            }
        }

        OperationRegion (FPIC, SystemIO, 0x0C00, 0x02)
        Field (FPIC, AnyAcc, NoLock, Preserve)
        {
            FPII,   8, 
            FPID,   8
        }

        IndexField (FPII, FPID, ByteAcc, NoLock, Preserve)
        {
            Offset (0xF4), 
            IUA0,   8, 
            IUA1,   8, 
            IIF6,   8, 
            IIF7,   8, 
            IUA2,   8, 
            IUA3,   8
        }

        Device (HFP1)
        {
            Name (_HID, "AMDI0060")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (HFPE)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFEC11000,         // Address Base
                        0x00000100,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.HFP1._CRS.RBUF */
            }
        }

        Device (HID0)
        {
            Name (_HID, "AMDI0063")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (HD0E)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFEC13000,         // Address Base
                        0x00000200,         // Address Length
                        )
                    GpioInt (Edge, ActiveHigh, SharedAndWake, PullNone, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x00AB
                        }
                })
                Return (RBUF) /* \_SB_.HID0._CRS.RBUF */
            }
        }

        Device (HID2)
        {
            Name (_HID, "AMDI0063")  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (HD2E)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFEC12000,         // Address Base
                        0x00000200,         // Address Length
                        )
                    GpioInt (Edge, ActiveHigh, SharedAndWake, PullNone, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x00AB
                        }
                })
                Return (RBUF) /* \_SB_.HID2._CRS.RBUF */
            }
        }

        Device (GPIO)
        {
            Name (_HID, "AMDI0030")  // _HID: Hardware ID
            Name (_CID, "AMDI0030")  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000007,
                    }
                    Memory32Fixed (ReadWrite,
                        0xFED81500,         // Address Base
                        0x00000400,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.GPIO._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (PPKG)
        {
            Name (_HID, "AMDI0052")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (PPKK)
        {
            Name (_HID, "AMDI0053")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((HPTI == One) && (HCOR == One)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }

        Device (FUR0)
        {
            Method (_HID, 0, Serialized)  // _HID: Hardware ID
            {
                If ((UT0O == One))
                {
                    Return ("AMDI0029")
                }

                Return ("AMDI0020")
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, _Y19)
                    {
                        0x00000003,
                    }
                    Memory32Fixed (ReadWrite,
                        0xFEDC9000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFEDC7000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, \_SB.FUR0._CRS._Y19._INT, IRQW)  // _INT: Interrupts
                IRQW = IUA0 /* \_SB_.IUA0 */
                Return (BUF0) /* \_SB_.FUR0._CRS.BUF0 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = Zero
                Local1 = FUIO (Zero)
                If ((TSOS >= 0x70))
                {
                    If ((UT0E == One))
                    {
                        If ((Local1 == 0x0F))
                        {
                            Local0 = 0x0F
                        }
                    }
                }

                If ((UT0I == One))
                {
                    Local0 = Zero
                }

                Return (Local0)
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((UT0D && UT0E))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((UT0D && UT0E))
                {
                    DSAD (0x0B, Zero)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((UT0D && UT0E))
                {
                    DSAD (0x0B, 0x03)
                }
            }
        }

        Device (FUR1)
        {
            Method (_HID, 0, Serialized)  // _HID: Hardware ID
            {
                If ((UT1O == One))
                {
                    Return ("AMDI0029")
                }

                Return ("AMDI0020")
            }

            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, _Y1A)
                    {
                        0x0000000E,
                    }
                    Memory32Fixed (ReadWrite,
                        0xFEDCA000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFEDC8000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, \_SB.FUR1._CRS._Y1A._INT, IRQW)  // _INT: Interrupts
                IRQW = IUA1 /* \_SB_.IUA1 */
                Return (BUF0) /* \_SB_.FUR1._CRS.BUF0 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = Zero
                Local1 = FUIO (One)
                If ((TSOS >= 0x70))
                {
                    If ((UT1E == One))
                    {
                        If ((Local1 == 0x0F))
                        {
                            Local0 = 0x0F
                        }
                    }
                }

                If ((UT1I == One))
                {
                    Local0 = Zero
                }

                Return (Local0)
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((UT1D && UT1E))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((UT1D && UT1E))
                {
                    DSAD (0x0C, Zero)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((UT1D && UT1E))
                {
                    DSAD (0x0C, 0x03)
                }
            }
        }

        Device (FUR2)
        {
            Method (_HID, 0, Serialized)  // _HID: Hardware ID
            {
                If ((UT2O == One))
                {
                    Return ("AMDI0029")
                }

                Return ("AMDI0020")
            }

            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, _Y1B)
                    {
                        0x00000005,
                    }
                    Memory32Fixed (ReadWrite,
                        0xFEDCE000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFEDCC000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, \_SB.FUR2._CRS._Y1B._INT, IRQW)  // _INT: Interrupts
                IRQW = IUA2 /* \_SB_.IUA2 */
                Return (BUF0) /* \_SB_.FUR2._CRS.BUF0 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = Zero
                Local1 = FUIO (0x02)
                If ((TSOS >= 0x70))
                {
                    If ((UT2E == One))
                    {
                        If ((Local1 == 0x0F))
                        {
                            Local0 = 0x0F
                        }
                    }
                }

                If ((UT2I == One))
                {
                    Local0 = Zero
                }

                Return (Local0)
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((UT2D && UT2E))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((UT2D && UT2E))
                {
                    DSAD (0x10, Zero)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((UT2D && UT2E))
                {
                    DSAD (0x10, 0x03)
                }
            }
        }

        Device (FUR3)
        {
            Method (_HID, 0, Serialized)  // _HID: Hardware ID
            {
                If ((UT3O == One))
                {
                    Return ("AMDI0029")
                }

                Return ("AMDI0020")
            }

            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, _Y1C)
                    {
                        0x0000000F,
                    }
                    Memory32Fixed (ReadWrite,
                        0xFEDCF000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFEDCD000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, \_SB.FUR3._CRS._Y1C._INT, IRQW)  // _INT: Interrupts
                IRQW = IUA3 /* \_SB_.IUA3 */
                Return (BUF0) /* \_SB_.FUR3._CRS.BUF0 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = Zero
                Local1 = FUIO (0x03)
                If ((TSOS >= 0x70))
                {
                    If ((UT3E == One))
                    {
                        If ((Local1 == 0x0F))
                        {
                            Local0 = 0x0F
                        }
                    }
                }

                If ((UT3I == One))
                {
                    Local0 = Zero
                }

                Return (Local0)
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((UT3D && UT3E))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((UT3D && UT3E))
                {
                    DSAD (0x1A, Zero)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((UT3D && UT3E))
                {
                    DSAD (0x1A, 0x03)
                }
            }
        }

        Device (FUR4)
        {
            Name (_HID, "AMDI0020")  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, _Y1D)
                    {
                        0x00000010,
                    }
                    Memory32Fixed (ReadWrite,
                        0xFEDD1000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFEDD0000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateByteField (BUF0, \_SB.FUR4._CRS._Y1D._INT, IRQB)  // _INT: Interrupts
                IRQB = IIF7 /* \_SB_.IIF7 */
                Return (BUF0) /* \_SB_.FUR4._CRS.BUF0 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = Zero
                If ((TSOS >= 0x70))
                {
                    If ((UT4E == One))
                    {
                        Local0 = 0x0F
                    }
                }

                If ((UT4I == One))
                {
                    Local0 = Zero
                }

                Return (Local0)
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((UT4D && UT4E))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((UT4D && UT4E))
                {
                    DSAD (0x14, Zero)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((UT4D && UT4E))
                {
                    DSAD (0x14, 0x03)
                }
            }
        }

        Device (I2CA)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {10}
                    Memory32Fixed (ReadWrite,
                        0xFEDC2000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                IRQW = (One << (IC0I & 0x0F))
                Return (BUF0) /* \_SB_.I2CA._CRS.BUF0 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC0E == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("d93e4d1c-58bb-493c-a06a-605a717f9e2e") /* Unknown UUID */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }
                        Case (One)
                        {
                            Return (Buffer (0x04)
                            {
                                 0xE5, 0x00, 0x6A, 0x00                           // ..j.
                            })
                        }

                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x05, 0xC8)
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((IC0D && IC0E))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((IC0D && IC0E))
                {
                    DSAD (0x05, Zero)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((IC0D && IC0E))
                {
                    DSAD (0x05, 0x03)
                }
            }
        }

        Device (I2CB)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {11}
                    Memory32Fixed (ReadWrite,
                        0xFEDC3000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                IRQW = (One << (IC1I & 0x0F))
                Return (BUF0) /* \_SB_.I2CB._CRS.BUF0 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC1E == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("d93e4d1c-58bb-493c-a06a-605a717f9e2e") /* Unknown UUID */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }
                        Case (One)
                        {
                            Return (Buffer (0x04)
                            {
                                 0xE5, 0x00, 0x6A, 0x00                           // ..j.
                            })
                        }

                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x06, 0xC8)
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((IC1D && IC1E))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((IC1D && IC1E))
                {
                    DSAD (0x06, Zero)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((IC1D && IC1E))
                {
                    DSAD (0x06, 0x03)
                }
            }
        }

        Device (I2CC)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {4}
                    Memory32Fixed (ReadWrite,
                        0xFEDC4000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                IRQW = (One << (IC2I & 0x0F))
                Return (BUF0) /* \_SB_.I2CC._CRS.BUF0 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC2E == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("d93e4d1c-58bb-493c-a06a-605a717f9e2e") /* Unknown UUID */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }
                        Case (One)
                        {
                            Return (Buffer (0x04)
                            {
                                 0xE5, 0x00, 0x6A, 0x00                           // ..j.
                            })
                        }

                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x07, 0xC8)
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((IC2D && IC2E))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((IC2D && IC2E))
                {
                    DSAD (0x07, Zero)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((IC2D && IC2E))
                {
                    DSAD (0x07, 0x03)
                }
            }
        }

        Device (I2CD)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {6}
                    Memory32Fixed (ReadWrite,
                        0xFEDC5000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                IRQW = (One << (IC3I & 0x0F))
                Return (BUF0) /* \_SB_.I2CD._CRS.BUF0 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC3E == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("d93e4d1c-58bb-493c-a06a-605a717f9e2e") /* Unknown UUID */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }
                        Case (One)
                        {
                            Return (Buffer (0x04)
                            {
                                 0xE5, 0x00, 0x6A, 0x00                           // ..j.
                            })
                        }

                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x08, 0xC8)
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((IC3D && IC3E))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((IC3D && IC3E))
                {
                    DSAD (0x08, Zero)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((IC3D && IC3E))
                {
                    DSAD (0x08, 0x03)
                }
            }
        }

        Name (I3ID, "AMDI0015")
        Name (I2ID, "AMDI0016")
        Device (I3CA)
        {
            Method (_HID, 0, Serialized)  // _HID: Hardware ID
            {
                If ((I30M == Zero))
                {
                    Return (I3ID) /* \_SB_.I3ID */
                }
                Else
                {
                    Return (I2ID) /* \_SB_.I2ID */
                }
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {10}
                    Memory32Fixed (ReadWrite,
                        0xFEDD2000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                IRQW = (One << (IC0I & 0x0F))
                Return (BUF0) /* \_SB_.I3CA._CRS.BUF0 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((I30E == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x15, 0xC8)
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((I30D && I30E))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((I30D && I30E))
                {
                    DSAD (0x15, Zero)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((I30D && I30E))
                {
                    DSAD (0x15, 0x03)
                }
            }
        }

        Device (I3CB)
        {
            Method (_HID, 0, Serialized)  // _HID: Hardware ID
            {
                If ((I31M == Zero))
                {
                    Return (I3ID) /* \_SB_.I3ID */
                }
                Else
                {
                    Return (I2ID) /* \_SB_.I2ID */
                }
            }

            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {11}
                    Memory32Fixed (ReadWrite,
                        0xFEDD3000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                IRQW = (One << (IC1I & 0x0F))
                Return (BUF0) /* \_SB_.I3CB._CRS.BUF0 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((I31E == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x0D, 0xC8)
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((I31D && I31E))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((I31D && I31E))
                {
                    DSAD (0x0D, Zero)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((I31D && I31E))
                {
                    DSAD (0x0D, 0x03)
                }
            }
        }

        Device (I3CC)
        {
            Method (_HID, 0, Serialized)  // _HID: Hardware ID
            {
                If ((I32M == Zero))
                {
                    Return (I3ID) /* \_SB_.I3ID */
                }
                Else
                {
                    Return (I2ID) /* \_SB_.I2ID */
                }
            }

            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {4}
                    Memory32Fixed (ReadWrite,
                        0xFEDD4000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                IRQW = (One << (IC2I & 0x0F))
                Return (BUF0) /* \_SB_.I3CC._CRS.BUF0 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((I32E == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x0E, 0xC8)
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((I32D && I32E))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((I32D && I32E))
                {
                    DSAD (0x0E, Zero)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((I32D && I32E))
                {
                    DSAD (0x0E, 0x03)
                }
            }
        }

        Device (I3CD)
        {
            Method (_HID, 0, Serialized)  // _HID: Hardware ID
            {
                If ((I33M == Zero))
                {
                    Return (I3ID) /* \_SB_.I3ID */
                }
                Else
                {
                    Return (I2ID) /* \_SB_.I2ID */
                }
            }

            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IRQ (Edge, ActiveHigh, Exclusive, )
                        {6}
                    Memory32Fixed (ReadWrite,
                        0xFEDD6000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
                CreateWordField (BUF0, One, IRQW)
                IRQW = (One << (IC3I & 0x0F))
                Return (BUF0) /* \_SB_.I3CD._CRS.BUF0 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((I33E == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x0F, 0xC8)
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((I33D && I33E))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((I33D && I33E))
                {
                    DSAD (0x0F, Zero)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((I33D && I33E))
                {
                    DSAD (0x0F, 0x03)
                }
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (UAR1)
        {
            Name (_HID, EisaId ("PNP0500") /* Standard PC COM Serial Port */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_DDN, "COM1")  // _DDN: DOS Device Name
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = Zero
                Local1 = FUIO (Zero)
                If ((Local1 != 0x0F))
                {
                    Local0 = 0x0F
                }

                If ((UL0I == One))
                {
                    Local0 = Zero
                }

                Return (Local0)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x02E8,             // Range Minimum
                        0x02E8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y1E)
                    IRQNoFlags (_Y1F)
                        {3}
                })
                CreateByteField (BUF0, \_SB.PCI0.UAR1._CRS._Y1E._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateByteField (BUF0, 0x03, IOHI)
                CreateByteField (BUF0, \_SB.PCI0.UAR1._CRS._Y1E._MAX, IORL)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, 0x05, IORH)
                CreateWordField (BUF0, \_SB.PCI0.UAR1._CRS._Y1F._INT, IRQL)  // _INT: Interrupts
                Local0 = FUIO (Zero)
                Switch (ToInteger (Local0))
                {
                    Case (Zero)
                    {
                        IOLO = 0xE8
                        IOHI = 0x02
                        IORL = 0xE8
                        IORH = 0x02
                    }
                    Case (One)
                    {
                        IOLO = 0xF8
                        IOHI = 0x02
                        IORL = 0xF8
                        IORH = 0x02
                    }
                    Case (0x02)
                    {
                        IOLO = 0xE8
                        IOHI = 0x03
                        IORL = 0xE8
                        IORH = 0x03
                    }
                    Case (0x03)
                    {
                        IOLO = 0xF8
                        IOHI = 0x03
                        IORL = 0xF8
                        IORH = 0x03
                    }

                }

                IRQL = (One << (FRUI (Zero) & 0x0F))
                Return (BUF0) /* \_SB_.PCI0.UAR1._CRS.BUF0 */
            }
        }

        Device (UAR2)
        {
            Name (_HID, EisaId ("PNP0500") /* Standard PC COM Serial Port */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_DDN, "COM2")  // _DDN: DOS Device Name
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = Zero
                Local1 = FUIO (One)
                If ((Local1 != 0x0F))
                {
                    Local0 = 0x0F
                }

                If ((UL1I == One))
                {
                    Local0 = Zero
                }

                Return (Local0)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x02F8,             // Range Minimum
                        0x02F8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y20)
                    IRQNoFlags (_Y21)
                        {4}
                })
                CreateByteField (BUF0, \_SB.PCI0.UAR2._CRS._Y20._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateByteField (BUF0, 0x03, IOHI)
                CreateByteField (BUF0, \_SB.PCI0.UAR2._CRS._Y20._MAX, IORL)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, 0x05, IORH)
                CreateWordField (BUF0, \_SB.PCI0.UAR2._CRS._Y21._INT, IRQL)  // _INT: Interrupts
                Local0 = FUIO (One)
                Switch (ToInteger (Local0))
                {
                    Case (Zero)
                    {
                        IOLO = 0xE8
                        IOHI = 0x02
                        IORL = 0xE8
                        IORH = 0x02
                    }
                    Case (One)
                    {
                        IOLO = 0xF8
                        IOHI = 0x02
                        IORL = 0xF8
                        IORH = 0x02
                    }
                    Case (0x02)
                    {
                        IOLO = 0xE8
                        IOHI = 0x03
                        IORL = 0xE8
                        IORH = 0x03
                    }
                    Case (0x03)
                    {
                        IOLO = 0xF8
                        IOHI = 0x03
                        IORL = 0xF8
                        IORH = 0x03
                    }

                }

                IRQL = (One << (FRUI (One) & 0x0F))
                Return (BUF0) /* \_SB_.PCI0.UAR2._CRS.BUF0 */
            }
        }

        Device (UAR3)
        {
            Name (_HID, EisaId ("PNP0500") /* Standard PC COM Serial Port */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_DDN, "COM3")  // _DDN: DOS Device Name
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = Zero
                Local1 = FUIO (0x02)
                If ((Local1 != 0x0F))
                {
                    Local0 = 0x0F
                }

                If ((UL2I == One))
                {
                    Local0 = Zero
                }

                Return (Local0)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x03E8,             // Range Minimum
                        0x03E8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y22)
                    IRQNoFlags (_Y23)
                        {3}
                })
                CreateByteField (BUF0, \_SB.PCI0.UAR3._CRS._Y22._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateByteField (BUF0, 0x03, IOHI)
                CreateByteField (BUF0, \_SB.PCI0.UAR3._CRS._Y22._MAX, IORL)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, 0x05, IORH)
                CreateWordField (BUF0, \_SB.PCI0.UAR3._CRS._Y23._INT, IRQL)  // _INT: Interrupts
                Local0 = FUIO (0x02)
                Switch (ToInteger (Local0))
                {
                    Case (Zero)
                    {
                        IOLO = 0xE8
                        IOHI = 0x02
                        IORL = 0xE8
                        IORH = 0x02
                    }
                    Case (One)
                    {
                        IOLO = 0xF8
                        IOHI = 0x02
                        IORL = 0xF8
                        IORH = 0x02
                    }
                    Case (0x02)
                    {
                        IOLO = 0xE8
                        IOHI = 0x03
                        IORL = 0xE8
                        IORH = 0x03
                    }
                    Case (0x03)
                    {
                        IOLO = 0xF8
                        IOHI = 0x03
                        IORL = 0xF8
                        IORH = 0x03
                    }

                }

                IRQL = (One << (FRUI (0x02) & 0x0F))
                Return (BUF0) /* \_SB_.PCI0.UAR3._CRS.BUF0 */
            }
        }

        Device (UAR4)
        {
            Name (_HID, EisaId ("PNP0500") /* Standard PC COM Serial Port */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (_DDN, "COM4")  // _DDN: DOS Device Name
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local0 = Zero
                Local1 = FUIO (0x03)
                If ((Local1 != 0x0F))
                {
                    Local0 = 0x0F
                }

                If ((UL3I == One))
                {
                    Local0 = Zero
                }

                Return (Local0)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x03F8,             // Range Minimum
                        0x03F8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y24)
                    IRQNoFlags (_Y25)
                        {4}
                })
                CreateByteField (BUF0, \_SB.PCI0.UAR4._CRS._Y24._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateByteField (BUF0, 0x03, IOHI)
                CreateByteField (BUF0, \_SB.PCI0.UAR4._CRS._Y24._MAX, IORL)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, 0x05, IORH)
                CreateWordField (BUF0, \_SB.PCI0.UAR4._CRS._Y25._INT, IRQL)  // _INT: Interrupts
                Local0 = FUIO (0x03)
                Switch (ToInteger (Local0))
                {
                    Case (Zero)
                    {
                        IOLO = 0xE8
                        IOHI = 0x02
                        IORL = 0xE8
                        IORH = 0x02
                    }
                    Case (One)
                    {
                        IOLO = 0xF8
                        IOHI = 0x02
                        IORL = 0xF8
                        IORH = 0x02
                    }
                    Case (0x02)
                    {
                        IOLO = 0xE8
                        IOHI = 0x03
                        IORL = 0xE8
                        IORH = 0x03
                    }
                    Case (0x03)
                    {
                        IOLO = 0xF8
                        IOHI = 0x03
                        IORL = 0xF8
                        IORH = 0x03
                    }

                }

                IRQL = (One << (FRUI (0x03) & 0x0F))
                Return (BUF0) /* \_SB_.PCI0.UAR4._CRS.BUF0 */
            }
        }
    }

    Device (_SB.TPM)
    {
        Name (TMRQ, 0xFFFFFFFF)
        Name (TLVL, 0xFFFFFFFF)
        Name (HPMB, 0xFD500000)
        Name (HPML, 0x00100000)
        Name (ITRV, 0xFFFFFFFF)
        Name (ILVV, 0xFFFFFFFF)
        Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
        {
            If (TCMF)
            {
                Return (0x01013469)
            }
            ElseIf ((TTDP == Zero))
            {
                Return (0x310CD041)
            }
            Else
            {
                Return ("MSFT0101")
            }
        }

        OperationRegion (TMMB, SystemMemory, 0xFED40000, 0x5000)
        Field (TMMB, ByteAcc, Lock, Preserve)
        {
            ACC0,   8, 
            Offset (0x08), 
            INTE,   32, 
            INTV,   8, 
            Offset (0x10), 
            INTS,   32, 
            INTF,   32, 
            TSTS,   32, 
            Offset (0x24), 
            FIFO,   32, 
            Offset (0x30), 
            IDTF,   32, 
            Offset (0x4C), 
            SCMD,   32
        }

        Method (_STR, 0, NotSerialized)  // _STR: Description String
        {
            If ((TTDP == Zero))
            {
                Return (Unicode ("TPM 1.2 Device"))
            }
            Else
            {
                Return (Unicode ("TPM 2.0 Device"))
            }
        }

        Name (_UID, One)  // _UID: Unique ID
        Name (CRST, ResourceTemplate ()
        {
            Memory32Fixed (ReadOnly,
                0x00000000,         // Address Base
                0x00001000,         // Address Length
                _Y26)
            Memory32Fixed (ReadOnly,
                0xFED70000,         // Address Base
                0x00001000,         // Address Length
                _Y27)
        })
        Name (CRSD, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                _Y28)
        })
        Name (CRID, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                _Y29)
        })
        Name (CREI, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                )
            GpioInt (Level, ActiveLow, ExclusiveAndWake, PullNone, 0x0000,
                "\\_SB.GPIO", 0x00, ResourceConsumer, _Y2A,
                )
                {   // Pin list
                    0x0000
                }
        })
        Name (CRSI, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite,
                0x00000000,         // Address Base
                0x00000000,         // Address Length
                _Y2B)
        })
        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
        {
            If ((AMDT == One))
            {
                CreateDWordField (CRST, \_SB.TPM._Y26._BAS, MTFB)  // _BAS: Base Address
                CreateDWordField (CRST, \_SB.TPM._Y26._LEN, LTFB)  // _LEN: Length
                MTFB = TPMB /* \TPMB */
                LTFB = TPBS /* \TPBS */
                CreateDWordField (CRST, \_SB.TPM._Y27._BAS, MTFC)  // _BAS: Base Address
                CreateDWordField (CRST, \_SB.TPM._Y27._LEN, LTFC)  // _LEN: Length
                MTFC = TPMC /* \TPMC */
                LTFC = TPCS /* \TPCS */
                Return (CRST) /* \_SB_.TPM_.CRST */
            }
            Else
            {
                If ((DTPT == One))
                {
                    CreateDWordField (CRSD, \_SB.TPM._Y28._BAS, MTFE)  // _BAS: Base Address
                    CreateDWordField (CRSD, \_SB.TPM._Y28._LEN, LTFE)  // _LEN: Length
                    MTFE = 0xFED40000
                    LTFE = 0x5000
                    Return (CRSD) /* \_SB_.TPM_.CRSD */
                }
                ElseIf ((TTPF == One))
                {
                    If (((TMRQ == Zero) || (TMRQ == 0xFFFFFFFF)))
                    {
                        CreateDWordField (CRID, \_SB.TPM._Y29._BAS, MTFD)  // _BAS: Base Address
                        CreateDWordField (CRID, \_SB.TPM._Y29._LEN, LTFD)  // _LEN: Length
                        MTFD = 0xFED40000
                        LTFD = 0x5000
                        Return (CRID) /* \_SB_.TPM_.CRID */
                    }
                    Else
                    {
                        CreateWordField (CREI, 0x23, LIRQ)
                        CreateBitField (CREI, \_SB.TPM._Y2A._POL, LLVL)  // _POL: Polarity
                        LIRQ = TMRQ /* \_SB_.TPM_.TMRQ */
                        LLVL = TLVL /* \_SB_.TPM_.TLVL */
                        Return (CREI) /* \_SB_.TPM_.CREI */
                    }
                }
                ElseIf ((TTPF == Zero))
                {
                    If ((AMDT == 0x02))
                    {
                        If (((HPMB != Zero) && (HPMB != 0xFFFFFFFF)))
                        {
                            CreateDWordField (CRSI, \_SB.TPM._Y2B._BAS, HSPB)  // _BAS: Base Address
                            CreateDWordField (CRSI, \_SB.TPM._Y2B._LEN, HSPL)  // _LEN: Length
                            HSPB = HPMB /* \_SB_.TPM_.HPMB */
                            HSPL = HPML /* \_SB_.TPM_.HPML */
                        }

                        Return (CRSI) /* \_SB_.TPM_.CRSI */
                    }

                    CreateDWordField (CRST, \_SB.TPM._Y27._BAS, MTFF)  // _BAS: Base Address
                    MTFF = FTPM /* \FTPM */
                    Return (CRST) /* \_SB_.TPM_.CRST */
                }

                MTFE = Zero
                LTFE = Zero
                Return (CRID) /* \_SB_.TPM_.CRID */
            }

            Return (CRID) /* \_SB_.TPM_.CRID */
        }

        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
        {
            If (((TMRQ != Zero) && (TMRQ != 0xFFFFFFFF)))
            {
                If ((AMDT == 0x02)){}
                Else
                {
                    CreateWordField (Arg0, 0x23, IRQ0)
                    CreateWordField (CREI, 0x23, LIRQ)
                    LIRQ = IRQ0 /* \_SB_.TPM_._SRS.IRQ0 */
                    TMRQ = IRQ0 /* \_SB_.TPM_._SRS.IRQ0 */
                    CreateBitField (Arg0, 0x98, ITRG)
                    CreateBitField (CREI, \_SB.TPM._Y2A._MOD, LTRG)  // _MOD: Mode
                    LTRG = ITRG /* \_SB_.TPM_._SRS.ITRG */
                    ITRV = ITRG /* \_SB_.TPM_._SRS.ITRG */
                    CreateBitField (Arg0, 0x99, ILVL)
                    CreateBitField (CREI, \_SB.TPM._Y2A._POL, LLVL)  // _POL: Polarity
                    LLVL = ILVL /* \_SB_.TPM_._SRS.ILVL */
                    ILVV = ILVL /* \_SB_.TPM_._SRS.ILVL */
                }

                If ((((IDTF & 0x0F) == Zero) || ((IDTF & 0x0F
                    ) == 0x0F)))
                {
                    If ((IRQ0 < 0x10))
                    {
                        INTV = (IRQ0 & 0x0F)
                    }

                    If ((ITRV == One))
                    {
                        INTE |= 0x10
                    }
                    Else
                    {
                        INTE &= 0xFFFFFFEF
                    }

                    If ((ILVV == Zero))
                    {
                        INTE |= 0x08
                    }
                    Else
                    {
                        INTE &= 0xFFFFFFF7
                    }
                }
            }
        }

        OperationRegion (CRBD, SystemMemory, TPMM, 0x48)
        Field (CRBD, AnyAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            HERR,   32, 
            Offset (0x40), 
            HCMD,   32, 
            HSTS,   32
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If ((TTDP == Zero))
            {
                If (TPMF)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
            ElseIf ((TTDP == One))
            {
                If (TPMF)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Return (Zero)
        }

        Method (STRT, 3, Serialized)
        {
            OperationRegion (TPMR, SystemMemory, FTPM, 0x1000)
            Field (TPMR, AnyAcc, NoLock, Preserve)
            {
                Offset (0x04), 
                FERR,   32, 
                Offset (0x0C), 
                BEGN,   32
            }

            Name (TIMR, Zero)
            If ((ToInteger (Arg0) != Zero)){}
            Switch (ToInteger (Arg1))
            {
                Case (Zero)
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }
                Case (One)
                {
                    TIMR = Zero
                    If ((AMDT == One))
                    {
                        While (((BEGN == One) && (TIMR < 0x0200)))
                        {
                            If ((BEGN == One))
                            {
                                Sleep (One)
                                TIMR++
                            }
                        }
                    }
                    ElseIf ((((HSTS & 0x02) | (HSTS & One)
                        ) == 0x03))
                    {
                        HCMD = One
                    }
                    Else
                    {
                        FERR = One
                        BEGN = Zero
                    }

                    Return (Zero)
                }

            }

            Return (One)
        }

        Method (CRYF, 3, Serialized)
        {
            If ((ToInteger (Arg0) != One)){}
            Switch (ToInteger (Arg1))
            {
                Case (Zero)
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }
                Case (One)
                {
                    Name (TPMV, Package (0x02)
                    {
                        One, 
                        Package (0x02)
                        {
                            One, 
                            0x20
                        }
                    })
                    If ((_STA () == Zero))
                    {
                        Return (Package (0x01)
                        {
                            Zero
                        })
                    }

                    Return (TPMV) /* \_SB_.TPM_.CRYF.TPMV */
                }

            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }
    }

    Scope (_SB.TPM)
    {
        OperationRegion (TSMI, SystemIO, SMIA, 0x02)
        Field (TSMI, WordAcc, NoLock, Preserve)
        {
            SMI,    16
        }

        OperationRegion (ATNV, SystemMemory, PPIM, PPIL)
        Field (ATNV, AnyAcc, NoLock, Preserve)
        {
            RQST,   32, 
            RCNT,   32, 
            ERRO,   32, 
            FLAG,   32, 
            MISC,   32, 
            OPTN,   32, 
            SRSP,   32
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If ((Arg0 == ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        Return (Buffer (0x02)
                        {
                             0xFF, 0x01                                       // ..
                        })
                    }
                    Case (One)
                    {
                        If ((PPIV == Zero))
                        {
                            Return ("1.2")
                        }
                        Else
                        {
                            Return ("1.3")
                        }
                    }
                    Case (0x02)
                    {
                        RQST = DerefOf (Arg3 [Zero])
                        SRSP = Zero
                        FLAG = 0x02
                        TMF1 = OFST /* \OFST */
                        SRSP = Zero
                        SMI = TMF1 /* \TMF1 */
                        Return (SRSP) /* \_SB_.TPM_.SRSP */
                    }
                    Case (0x03)
                    {
                        Name (PPI1, Package (0x02)
                        {
                            Zero, 
                            Zero
                        })
                        PPI1 [One] = RQST /* \_SB_.TPM_.RQST */
                        Return (PPI1) /* \_SB_.TPM_._DSM.PPI1 */
                    }
                    Case (0x04)
                    {
                        Return (TRST) /* \TRST */
                    }
                    Case (0x05)
                    {
                        Name (PPI2, Package (0x03)
                        {
                            Zero, 
                            Zero, 
                            Zero
                        })
                        SRSP = Zero
                        FLAG = 0x05
                        SMI = OFST /* \OFST */
                        PPI2 [One] = RCNT /* \_SB_.TPM_.RCNT */
                        PPI2 [0x02] = ERRO /* \_SB_.TPM_.ERRO */
                        Return (PPI2) /* \_SB_.TPM_._DSM.PPI2 */
                    }
                    Case (0x06)
                    {
                        Return (0x03)
                    }
                    Case (0x07)
                    {
                        RQST = DerefOf (Arg3 [Zero])
                        FLAG = 0x07
                        OPTN = Zero
                        If ((RQST == 0x17))
                        {
                            ToInteger (DerefOf (Arg3 [One]), OPTN) /* \_SB_.TPM_.OPTN */
                        }

                        TMF1 = OFST /* \OFST */
                        SRSP = Zero
                        SMI = TMF1 /* \TMF1 */
                        Return (SRSP) /* \_SB_.TPM_.SRSP */
                    }
                    Case (0x08)
                    {
                        RQST = DerefOf (Arg3 [Zero])
                        FLAG = 0x08
                        TMF1 = OFST /* \OFST */
                        SRSP = Zero
                        SMI = TMF1 /* \TMF1 */
                        Return (SRSP) /* \_SB_.TPM_.SRSP */
                    }
                    Default
                    {
                    }

                }
            }
            ElseIf ((Arg0 == ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d") /* TPM Memory Clear */))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Case (One)
                    {
                        RQST = DerefOf (Arg3 [Zero])
                        FLAG = 0x09
                        TMF1 = OFST /* \OFST */
                        SRSP = Zero
                        SMI = TMF1 /* \TMF1 */
                        Return (SRSP) /* \_SB_.TPM_.SRSP */
                    }
                    Default
                    {
                    }

                }
            }

            If ((Arg0 == ToUUID ("cf8e16a5-c1e8-4e25-b712-4f54a96702c8") /* TPM Hardware Information */))
            {
                Return (CRYF (Arg1, Arg2, Arg3))
            }

            If ((Arg0 == ToUUID ("6bbf6cab-5463-4714-b7cd-f0203c0368d4") /* TPM Start Method */))
            {
                Return (STRT (Arg1, Arg2, Arg3))
            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }

        Method (TPTS, 1, Serialized)
        {
            Switch (ToInteger (Arg0))
            {
                Case (0x04)
                {
                    RQST = Zero
                    FLAG = 0x09
                    SRSP = Zero
                    SMI = OFST /* \OFST */
                }
                Case (0x05)
                {
                    RQST = Zero
                    FLAG = 0x09
                    SRSP = Zero
                    SMI = OFST /* \OFST */
                }

            }

            Sleep (0x012C)
        }
    }

    Scope (_SB)
    {
        Name (UWSV, 0x02)
        OperationRegion (UWNV, SystemMemory, 0x96F17018, 0x00070000)
    }

    Scope (_SB.PCI0)
    {
        Name (OTPM, 0x02)
    }

    Scope (_SB.I2CB)
    {
        Device (TPAD)
        {
            Name (HADR, 0x0020)
            Name (_HID, "UNIW0001")  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_S0W, Zero)  // _S0W: S0 Device Wake State
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x002C, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CB",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveLow, Exclusive, PullNone, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0009
                        }
                })
                Return (RBUF) /* \_SB_.I2CB.TPAD._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^^PCI0.OTPM != 0x02))
                {
                    Return (Zero)
                }

                If ((^^^PCI0.SBRG.EC0.TPID == Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == One))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Return (HADR) /* \_SB_.I2CB.TPAD.HADR */
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }

    Scope (_SB)
    {
        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E") /* Sleep Button Device */)  // _HID: Hardware ID
        }
    }

    Name (ECON, Zero)
    Scope (_SB.PCI0.SBRG)
    {
        Device (EC0)
        {
            OperationRegion (IO, SystemIO, 0x60, 0x07)
            Field (IO, ByteAcc, Lock, Preserve)
            {
                CMD0,   8, 
                Offset (0x02), 
                CMD2,   8, 
                Offset (0x04), 
                CMD4,   8, 
                Offset (0x06), 
                CMD6,   8
            }

            Field (IO, ByteAcc, Lock, Preserve)
            {
                KBDT,   8, 
                Offset (0x02), 
                ECDT,   8, 
                Offset (0x04), 
                OUTS,   1, 
                INPS,   1, 
                Offset (0x06), 
                OUT6,   1, 
                INP6,   1
            }

            Name (\CPSZ, Zero)
            Name (OSEC, 0x06)
            Name (THOT, Zero)
            Name (IGPU, Zero)
            OperationRegion (ECMG, SystemMemory, 0xFED50000, 0x1000)
            Field (ECMG, AnyAcc, NoLock, Preserve)
            {
                Offset (0x402), 
                XIF1,   16, 
                XIF2,   16, 
                Offset (0x432), 
                XST0,   16, 
                XST1,   16, 
                XST2,   16, 
                XST3,   16, 
                Offset (0x43E), 
                CPTM,   8, 
                Offset (0x44F), 
                VGAT,   8, 
                Offset (0x460), 
                FFAN,   4, 
                Offset (0x466), 
                    ,   4, 
                S0E3,   1, 
                    ,   1, 
                S0E1,   1, 
                Offset (0x468), 
                SDAN,   4, 
                Offset (0x490), 
                    ,   2, 
                BSOK,   1, 
                Offset (0x497), 
                ISDB,   1, 
                Offset (0x49F), 
                    ,   3, 
                ADPT,   4, 
                Offset (0x4A6), 
                CYCN,   16, 
                Offset (0x704), 
                BTP0,   16, 
                Offset (0x727), 
                    ,   6, 
                CUME,   1, 
                Offset (0x72D), 
                EYER,   8, 
                EMON,   8, 
                Offset (0x73A), 
                HCPT,   8, 
                Offset (0x743), 
                GNEN,   1, 
                ECDC,   1, 
                Offset (0x744), 
                CTVA,   8, 
                DBCT,   8, 
                MXDB,   8, 
                MIDB,   8, 
                Offset (0x74C), 
                PDIN,   4, 
                    ,   1, 
                Offset (0x751), 
                    ,   4, 
                TBME,   1, 
                    ,   2, 
                UFME,   1, 
                Offset (0x760), 
                TPID,   8, 
                Offset (0x783), 
                APL1,   8, 
                APL2,   8, 
                APL4,   8, 
                APTC,   7, 
                APTN,   1, 
                Offset (0x788), 
                CTWA,   8, 
                Offset (0x7A4), 
                    ,   2, 
                GC6S,   1, 
                Offset (0x7B9), 
                CGLM,   7, 
                Offset (0x7C4), 
                    ,   3, 
                DBEN,   1, 
                    ,   1, 
                DBST,   1, 
                Offset (0x7C5), 
                    ,   5, 
                WHMS,   1, 
                Offset (0x7C6), 
                WMS0,   2, 
                Offset (0x7C7), 
                    ,   1, 
                LCSE,   1, 
                OCPL,   3, 
                Offset (0x7D0), 
                DBD1,   8, 
                DBD2,   8, 
                GFID,   5, 
                Offset (0x7D4), 
                CPUA,   8, 
                DBAP,   8, 
                DBSP,   8, 
                CGCT,   8, 
                Offset (0xEA0), 
                UVER,   16, 
                RESV,   16, 
                CCI0,   8, 
                CCI1,   8, 
                CCI2,   8, 
                CCI3,   8, 
                CTL0,   8, 
                CTL1,   8, 
                CTL2,   8, 
                CTL3,   8, 
                CTL4,   8, 
                CTL5,   8, 
                CTL6,   8, 
                CTL7,   8, 
                MGI0,   8, 
                MGI1,   8, 
                MGI2,   8, 
                MGI3,   8, 
                MGI4,   8, 
                MGI5,   8, 
                MGI6,   8, 
                MGI7,   8, 
                MGI8,   8, 
                MGI9,   8, 
                MGIA,   8, 
                MGIB,   8, 
                MGIC,   8, 
                MGID,   8, 
                MGIE,   8, 
                MGIF,   8, 
                MGO0,   8, 
                MGO1,   8, 
                MGO2,   8, 
                MGO3,   8, 
                MGO4,   8, 
                MGO5,   8, 
                MGO6,   8, 
                MGO7,   8, 
                MGO8,   8, 
                MGO9,   8, 
                MGOA,   8, 
                MGOB,   8, 
                MGOC,   8, 
                MGOD,   8, 
                MGOE,   8, 
                MGOF,   8
            }

            OperationRegion (ECMP, EmbeddedControl, Zero, 0xFF)
            Field (ECMP, ByteAcc, Lock, Preserve)
            {
                Offset (0x7B), 
                DEVS,   8
            }

            OperationRegion (ECXP, EmbeddedControl, Zero, 0xFF)
            Field (ECXP, ByteAcc, Lock, Preserve)
            {
                XIF0,   16, 
                Offset (0x06), 
                XIF3,   16, 
                XIF4,   16, 
                XIF5,   16, 
                XIF6,   16, 
                XIF7,   16, 
                XIF8,   16, 
                XIF9,   64, 
                XIFA,   64, 
                XIFB,   64, 
                XIFC,   64, 
                Offset (0x3A), 
                XTP0,   16, 
                XCIN,   1, 
                    ,   1, 
                XTIN,   1, 
                Offset (0x3D), 
                BLLV,   8, 
                XHPP,   7, 
                Offset (0x3F), 
                Offset (0x40), 
                XSEC,   8, 
                XLPT,   8, 
                    ,   3, 
                Q70D,   1, 
                Q70M,   1, 
                Offset (0x43), 
                XBRL,   3, 
                    ,   4, 
                XBKL,   1, 
                Offset (0x56), 
                VGTP,   1, 
                    ,   4, 
                BLSC,   1, 
                MDTP,   2, 
                Offset (0x58), 
                    ,   7, 
                EIST,   1, 
                Offset (0x5A), 
                DEXS,   8, 
                XSLT,   1, 
                    ,   2, 
                GC6I,   1, 
                GPST,   1, 
                Offset (0x5C), 
                Offset (0x63), 
                TCOS,   8, 
                Offset (0x66), 
                TURB,   8, 
                Offset (0x6A), 
                PL1L,   8, 
                PL2L,   8, 
                Offset (0x6E), 
                PL3L,   8, 
                PL4L,   8, 
                Offset (0x72), 
                    ,   4, 
                XS4F,   1, 
                Offset (0x76), 
                    ,   1, 
                SLID,   1, 
                    ,   1, 
                S3WA,   1, 
                    ,   1, 
                HPEN,   1, 
                Offset (0x77), 
                VDDT,   8, 
                VDDE,   8, 
                SOCT,   8, 
                SOCE,   8, 
                    ,   1, 
                TOPD,   1, 
                WUSB,   1, 
                FGPT,   1, 
                WEBC,   1, 
                BLTH,   1, 
                DV3G,   1, 
                WLAN,   1, 
                OSDF,   8, 
                CGVT,   8, 
                Offset (0x8A), 
                LDAT,   8, 
                HDAT,   8, 
                RFLG,   1, 
                WFLG,   1, 
                BFLG,   1, 
                CFLG,   1, 
                    ,   3, 
                DRDY,   1, 
                CMDL,   8, 
                CMDH,   8, 
                Offset (0x90), 
                ACIC,   1, 
                BPST,   1, 
                Offset (0x9F), 
                ACWT,   1, 
                HTMF,   1, 
                ACFL,   1, 
                Offset (0xA0), 
                Offset (0xAB), 
                RSOC,   8, 
                Offset (0xC0), 
                BIF0,   16, 
                BIF1,   16, 
                BIF2,   16, 
                BIF3,   16, 
                BIF4,   16, 
                BIF5,   16, 
                BIF6,   16, 
                BIF7,   16, 
                BIF8,   16, 
                BIF9,   64, 
                BIFA,   64, 
                BIFB,   64, 
                BIFC,   64, 
                BST0,   16, 
                BST1,   16, 
                BST2,   16, 
                BST3,   16, 
                Offset (0xFC), 
                ACIN,   1, 
                    ,   1, 
                BTIN,   1, 
                Offset (0xFD)
            }

            Name (_HID, EisaId ("PNP0C09") /* Embedded Controller Device */)  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0062,             // Range Minimum
                    0x0062,             // Range Maximum
                    0x00,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0066,             // Range Minimum
                    0x0066,             // Range Maximum
                    0x00,               // Alignment
                    0x01,               // Length
                    )
            })
            Mutex (ECMT, 0x00)
            Method (ECMD, 1, Serialized)
            {
                Local0 = Acquire (ECMT, 0x03E8)
                If ((Local0 == Zero))
                {
                    If (ECON)
                    {
                        While ((CMD6 & 0x02))
                        {
                            Stall (0x05)
                        }

                        CMD6 = Arg0
                    }

                    Release (ECMT)
                    Return (Zero)
                }
                Else
                {
                    Return (0xFF)
                }
            }

            Name (FFNT, Zero)
            Name (DTRD, Zero)
            Method (RECM, 2, Serialized)
            {
                If (!BFLG)
                {
                    BFLG = One
                    If (ECOK)
                    {
                        ECOK = Zero
                        If (ECON)
                        {
                            Acquire (ECMX, 0xFFFF)
                            DRDY = Zero
                            LDAT = Arg0
                            HDAT = Arg1
                            RFLG = One
                            FFNT = 0x14
                            DTRD = Zero
                            While (!DTRD)
                            {
                                FFNT -= One
                                If ((FFNT == Zero))
                                {
                                    Local0 = 0xE5
                                    Break
                                }

                                Sleep (0x32)
                                DTRD = DRDY /* \_SB_.PCI0.SBRG.EC0_.DRDY */
                            }

                            If (~(FFNT == Zero))
                            {
                                Local0 = CMDL /* \_SB_.PCI0.SBRG.EC0_.CMDL */
                            }

                            DRDY = Zero
                            Release (ECMX)
                        }
                        Else
                        {
                            Local0 = 0xE5
                        }

                        ECOK = One
                    }
                    Else
                    {
                        Local0 = 0xE5
                    }
                }
                Else
                {
                    Local0 = 0xE5
                }

                If (ECOK)
                {
                    BFLG = Zero
                }

                Return (Local0)
            }

            Method (WECM, 3, Serialized)
            {
                If (!BFLG)
                {
                    BFLG = One
                    If (ECOK)
                    {
                        ECOK = Zero
                        If (ECON)
                        {
                            Acquire (ECMX, 0xFFFF)
                            DRDY = Zero
                            LDAT = Arg0
                            HDAT = Arg1
                            CMDL = Arg2
                            CMDH = Zero
                            WFLG = One
                            Sleep (0x0A)
                            FFNT = 0x14
                            DTRD = Zero
                            While (!DTRD)
                            {
                                Sleep (0x32)
                                FFNT--
                                If ((FFNT == Zero))
                                {
                                    Local0 = 0xE5
                                    Break
                                }

                                DTRD = DRDY /* \_SB_.PCI0.SBRG.EC0_.DRDY */
                            }

                            DRDY = Zero
                        }
                        Else
                        {
                            Local0 = 0xE5
                        }

                        Release (ECMX)
                    }
                    Else
                    {
                        Local0 = 0xE5
                    }

                    ECOK = One
                }
                Else
                {
                    Local0 = 0xE5
                }

                If (ECOK)
                {
                    BFLG = Zero
                }

                Return (Local0)
            }

            Name (_GPE, 0x04)  // _GPE: General Purpose Events
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (((Arg0 == 0x03) && (Arg1 == One)))
                {
                    ECON = One
                    If ((OSVR == 0x10))
                    {
                        OSEC = 0x07
                        DBG8 = 0x07
                    }
                    ElseIf (((OSVR == 0x0E) || (OSVR == 0x0F)))
                    {
                        OSEC = 0x06
                        DBG8 = 0x06
                    }
                    Else
                    {
                        OSEC = 0x05
                        DBG8 = 0x05
                    }

                    XSEC = OSEC /* \_SB_.PCI0.SBRG.EC0_.OSEC */
                    PMSF ()
                }
            }

            Method (_Q06, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0x06
                If ((BPST == One))
                {
                    Notify (BAT0, 0x81) // Information Change
                }

                Notify (BAT0, 0x80) // Status Change
                Notify (AC0, 0x80) // Status Change
            }

            Method (_Q07, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0x07
                Local0 = Zero
                Notify (AC0, 0x80) // Status Change
                Sleep (0x14)
                Notify (BAT0, 0x80) // Status Change
                Sleep (0x14)
            }

            Method (EPTS, 1, NotSerialized)
            {
            }

            Method (EWAK, 1, NotSerialized)
            {
            }

            Method (DELY, 1, NotSerialized)
            {
                Local0 = Zero
                Local1 = (Arg0 * 0x0A)
                While ((Local0 < Local1))
                {
                    Local0 += One
                    Stall (0x64)
                }
            }

            Method (DGPS, 0, NotSerialized)
            {
                If ((^^^GPP0.PG00._STA () == Zero))
                {
                    Return (0x55)
                }
                Else
                {
                    Return (0xAA)
                }
            }

            Method (IGPS, 1, Serialized)
            {
                Mutex (IGMX, 0x00)
                Name (FFNT, Zero)
                Acquire (IGMX, 0xFFFF)
                If ((^^^GPP0.PG00._STA () == Zero))
                {
                    If (((IGPU == Zero) && (Arg0 == One)))
                    {
                        Notify (^^^GPP0.PEGP, 0x03) // Eject Request
                        ^^^GPP0.PEGP._PSC = Zero
                        Local0 = Zero
                        FFNT = 0x64
                        While ((^^^GPP0.PEGP._PSC != 0x03))
                        {
                            FFNT -= One
                            If ((FFNT == Zero))
                            {
                                Local0 = One
                                Break
                            }

                            Sleep (0x64)
                        }

                        If ((Local0 == Zero))
                        {
                            DELY (0x14)
                            IGPU = One
                        }
                    }
                    ElseIf (((IGPU == One) && (Arg0 == Zero)))
                    {
                        DELY (0x14)
                        IGPU = Zero
                        Notify (GPP0, Zero) // Bus Check
                        Notify (^^^GPP0.PEGP, Zero) // Bus Check
                    }
                }

                Release (IGMX)
            }

            Method (PMSF, 0, NotSerialized)
            {
                If ((GFID != Zero))
                {
                    If (CUME)
                    {
                        _Q83 ()
                        _Q84 ()
                    }
                    Else
                    {
                        If (((TBME == One) && (UFME == Zero)))
                        {
                            ^^^^INOU.PWUP (OCPL)
                        }

                        If (((TBME == Zero) && (UFME == One)))
                        {
                            ^^^^NPCF.ACBT = Zero
                            ^^^^NPCF.AMAT = Zero
                            ^^^^NPCF.DBAC = One
                            Notify (NPCF, 0xC0) // Hardware-Specific
                        }

                        If (((TBME == Zero) && (UFME == Zero)))
                        {
                            ^^^^NPCF.ACBT = Zero
                            ^^^^NPCF.AMAT = Zero
                            ^^^^NPCF.DBAC = One
                            Notify (NPCF, 0xC0) // Hardware-Specific
                        }
                    }
                }
            }

            Method (_Q0A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0x0A
                Notify (SLPB, 0x80) // Status Change
            }

            Method (_Q0C, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0x0C
                ^^^VGA.AFN0 ()
                Notify (VGA, 0x80) // Status Change
            }

            Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0x14
                If (((DPMD == Zero) || (DPMD == 0x02)))
                {
                    Notify (^^^GP17.VGA.LCD, 0x87) // Device-Specific
                }
                Else
                {
                    Notify (^^^GPP0.PEGP.EDP1, 0x87) // Device-Specific
                }
            }

            Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0x15
                If (((DPMD == Zero) || (DPMD == 0x02)))
                {
                    Notify (^^^GP17.VGA.LCD, 0x86) // Device-Specific
                }
                Else
                {
                    Notify (^^^GPP0.PEGP.EDP1, 0x86) // Device-Specific
                }
            }

            Method (_Q16, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0x16
                ^^^^LID1.LIDS = One
                Notify (LID1, 0x80) // Status Change
            }

            Method (_Q19, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0x19
                ^^^^LID1.LIDS = Zero
                Notify (LID1, 0x80) // Status Change
            }

            Method (_Q27, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0x27
                THOT = One
                Notify (ECTZ, 0x80) // Thermal Status Change
            }

            Method (_Q83, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0x83
                Local0 = Zero
                Local0 = CTWA /* \_SB_.PCI0.SBRG.EC0_.CTWA */
                Local0 = (Local0 * 0x08)
                If (((TBME == One) && (UFME == Zero)))
                {
                    ^^^^INOU.PWUP (OCPL)
                }
                Else
                {
                    ^^^^NPCF.ACBT = Local0
                    Notify (NPCF, 0xC0) // Hardware-Specific
                }
            }

            Method (_Q84, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0x84
                If (((^^^^INOU.CSTM == One) && ((TBME == One) && (UFME == Zero))))
                {
                    ^^^^NPCF.AMAT = Zero
                    ^^^^NPCF.DBAC = One
                    Notify (NPCF, 0xC0) // Hardware-Specific
                    Notify (^^^GPP0.PEGP, 0xC5) // Hardware-Specific
                }
                ElseIf ((DBEN == One))
                {
                    ^^^^NPCF.DBAC = Zero
                    Local0 = Zero
                    Local0 = (DBAP * 0x08)
                    If (((TBME == One) && (UFME == Zero)))
                    {
                        ^^^^INOU.PWUP (OCPL)
                    }
                    Else
                    {
                        ^^^^NPCF.AMAT = Local0
                        Notify (NPCF, 0xC0) // Hardware-Specific
                    }
                }
                Else
                {
                    ^^^^NPCF.DBAC = One
                    Notify (NPCF, 0xC0) // Hardware-Specific
                }
            }

            Method (_Q85, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0x85
                ^^^^NPCF.WMEN = WHMS /* \_SB_.PCI0.SBRG.EC0_.WHMS */
                Notify (NPCF, 0xC1) // Hardware-Specific
            }

            Method (_Q88, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0x88
                PMSF ()
            }

            Method (_Q89, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0x89
                Notify (BAT0, 0x80) // Status Change
            }

            Method (_Q8A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0x8A
                ^^^^INOU.PWUP (OCPL)
            }

            Method (_Q8D, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                If (((DPMD == Zero) || (DPMD == 0x02)))
                {
                    Notify (^^^GP17.VGA, 0x81) // Information Change
                }
                Else
                {
                    Notify (^^^GPP0.PEGP, 0x81) // Information Change
                }
            }

            Method (_Q91, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0x91
                M010 (0x08, One)
                WEBC = Zero
            }

            Method (_Q92, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0x92
                M010 (0x08, Zero)
                WEBC = One
            }

            Method (_QD1, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0xD1
                Debug = "=== QD1 ==="
                Notify (^^^GPP0.PEGP, 0xD1) // Hardware-Specific
            }

            Method (_QD2, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0xD2
                Debug = "=== QD2 ==="
                Notify (^^^GPP0.PEGP, 0xD2) // Hardware-Specific
            }

            Method (_QD3, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0xD3
                Debug = "=== QD3 ==="
                Notify (^^^GPP0.PEGP, 0xD3) // Hardware-Specific
            }

            Method (_QD4, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0xD4
                Debug = "=== QD4 ==="
                Notify (^^^GPP0.PEGP, 0xD4) // Hardware-Specific
            }

            Method (_QD5, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0xD5
                Debug = "=== QD5 ==="
                Notify (^^^GPP0.PEGP, 0xD5) // Hardware-Specific
            }

            Name (OSDT, Zero)
            Method (_Q53, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0x53
                Sleep (0x14)
                OSDT = OSDF /* \_SB_.PCI0.SBRG.EC0_.OSDF */
                ^^^^AMW0.WMBC (Zero, 0x03, OSDT)
                OSDT = Zero
                Sleep (0x14)
                OSDF = Zero
            }

            Method (_Q76, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0x76
                Notify (GPP0, 0x81) // Information Change
                Notify (^^^GPP0.PEGP, 0x81) // Information Change
            }

            Name (XX11, Buffer (0x07){})
            Method (PLIM, 2, NotSerialized)
            {
                CreateWordField (XX11, Zero, SSZE)
                CreateByteField (XX11, 0x02, SMUF)
                CreateDWordField (XX11, 0x03, SMUD)
                SSZE = 0x07
                SMUF = Arg0
                SMUD = Arg1
                ALIB (0x0C, XX11)
            }

            Method (UCEV, 0, Serialized)
            {
                Local0 = Timer
                ^^^^UBTC.MGI0 = MGI0 /* \_SB_.PCI0.SBRG.EC0_.MGI0 */
                ^^^^UBTC.MGI1 = MGI1 /* \_SB_.PCI0.SBRG.EC0_.MGI1 */
                ^^^^UBTC.MGI2 = MGI2 /* \_SB_.PCI0.SBRG.EC0_.MGI2 */
                ^^^^UBTC.MGI3 = MGI3 /* \_SB_.PCI0.SBRG.EC0_.MGI3 */
                ^^^^UBTC.MGI4 = MGI4 /* \_SB_.PCI0.SBRG.EC0_.MGI4 */
                ^^^^UBTC.MGI5 = MGI5 /* \_SB_.PCI0.SBRG.EC0_.MGI5 */
                ^^^^UBTC.MGI6 = MGI6 /* \_SB_.PCI0.SBRG.EC0_.MGI6 */
                ^^^^UBTC.MGI7 = MGI7 /* \_SB_.PCI0.SBRG.EC0_.MGI7 */
                ^^^^UBTC.MGI8 = MGI8 /* \_SB_.PCI0.SBRG.EC0_.MGI8 */
                ^^^^UBTC.MGI9 = MGI9 /* \_SB_.PCI0.SBRG.EC0_.MGI9 */
                ^^^^UBTC.MGIA = MGIA /* \_SB_.PCI0.SBRG.EC0_.MGIA */
                ^^^^UBTC.MGIB = MGIB /* \_SB_.PCI0.SBRG.EC0_.MGIB */
                ^^^^UBTC.MGIC = MGIC /* \_SB_.PCI0.SBRG.EC0_.MGIC */
                ^^^^UBTC.MGID = MGID /* \_SB_.PCI0.SBRG.EC0_.MGID */
                ^^^^UBTC.MGIE = MGIE /* \_SB_.PCI0.SBRG.EC0_.MGIE */
                ^^^^UBTC.MGIF = MGIF /* \_SB_.PCI0.SBRG.EC0_.MGIF */
                ^^^^UBTC.CCI0 = CCI0 /* \_SB_.PCI0.SBRG.EC0_.CCI0 */
                ^^^^UBTC.CCI1 = CCI1 /* \_SB_.PCI0.SBRG.EC0_.CCI1 */
                ^^^^UBTC.CCI2 = CCI2 /* \_SB_.PCI0.SBRG.EC0_.CCI2 */
                ^^^^UBTC.CCI3 = CCI3 /* \_SB_.PCI0.SBRG.EC0_.CCI3 */
                Local1 = ((Timer - Local0) / 0x2710)
                Notify (UBTC, 0x80) // Status Change
            }

            Method (_Q7B, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                UCEV ()
            }

            Method (_Q30, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0x30
                Debug = "=== Q30 ==="
                M010 (0x8B, Zero)
            }

            Method (_QBB, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                DBG8 = 0xBB
                Name (TMPD, Zero)
                While (OUTS)
                {
                    TMPD = CMD0 /* \_SB_.PCI0.SBRG.EC0_.CMD0 */
                }
            }
        }
    }

    Scope (_SB)
    {
        Mutex (MUEX, 0x00)
        Device (AC0)
        {
            Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                _SB
            })
            Name (XX00, Buffer (0x03){})
            Name (ACDC, 0xFF)
            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                Acquire (MUEX, 0xFFFF)
                If (ECON)
                {
                    Local0 = ^^PCI0.SBRG.EC0.XCIN /* \_SB_.PCI0.SBRG.EC0_.XCIN */
                }
                Else
                {
                    Local0 = One
                }

                Release (MUEX)
                CreateWordField (XX00, Zero, SSZE)
                CreateByteField (XX00, 0x02, ACST)
                SSZE = 0x03
                If ((Local0 != ACDC))
                {
                    If (Local0)
                    {
                        If (((DPMD == Zero) || (DPMD == 0x02)))
                        {
                            AFN4 (One)
                        }

                        ACST = Zero
                    }
                    Else
                    {
                        If (((DPMD == Zero) || (DPMD == 0x02)))
                        {
                            AFN4 (0x02)
                        }

                        ACST = One
                    }

                    ALIB (One, XX00)
                    ACDC = Local0
                }

                Return (Local0)
            }
        }

        Device (BAT0)
        {
            Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                _SB
            })
            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                Name (PAK0, Package (0x0D)
                {
                    One, 
                    0x0C56, 
                    0x0C56, 
                    Zero, 
                    0x2A30, 
                    Zero, 
                    Zero, 
                    0x10, 
                    0x08, 
                    "standard", 
                    "00001", 
                    "LiON", 
                    "OEM"
                })
                If (ECON)
                {
                    Acquire (MUEX, 0xFFFF)
                    Debug = "ECBE"
                    PAK0 [One] = ^^PCI0.SBRG.EC0.XIF1 /* \_SB_.PCI0.SBRG.EC0_.XIF1 */
                    If ((^^PCI0.SBRG.EC0.ISDB == One))
                    {
                        If ((^^PCI0.SBRG.EC0.CYCN >= 0x32))
                        {
                            PAK0 [0x02] = ^^PCI0.SBRG.EC0.XIF2 /* \_SB_.PCI0.SBRG.EC0_.XIF2 */
                        }
                        Else
                        {
                            PAK0 [0x02] = ^^PCI0.SBRG.EC0.XIF1 /* \_SB_.PCI0.SBRG.EC0_.XIF1 */
                        }
                    }
                    Else
                    {
                        PAK0 [0x02] = ^^PCI0.SBRG.EC0.XIF2 /* \_SB_.PCI0.SBRG.EC0_.XIF2 */
                    }

                    PAK0 [0x03] = ^^PCI0.SBRG.EC0.XIF3 /* \_SB_.PCI0.SBRG.EC0_.XIF3 */
                    PAK0 [0x04] = ^^PCI0.SBRG.EC0.XIF4 /* \_SB_.PCI0.SBRG.EC0_.XIF4 */
                    PAK0 [0x07] = ^^PCI0.SBRG.EC0.XIF7 /* \_SB_.PCI0.SBRG.EC0_.XIF7 */
                    Release (MUEX)
                }
                Else
                {
                    PAK0 [One] = 0xFFFFFFFF
                    PAK0 [0x02] = 0xFFFFFFFF
                    PAK0 [0x04] = 0xFFFFFFFF
                    PAK0 [0x09] = "Error"
                    PAK0 [0x0A] = "00000"
                    PAK0 [0x0B] = "Error"
                    PAK0 [0x0C] = "Error"
                }

                Return (PAK0) /* \_SB_.BAT0._BIF.PAK0 */
            }

            Name (BFB0, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                Acquire (MUEX, 0xFFFF)
                Debug = "BST1 Start"
                If ((^^PCI0.SBRG.EC0.BSOK == One))
                {
                    If (((^^PCI0.SBRG.EC0.CGLM <= 0x63) && (^^PCI0.SBRG.EC0.CGLM >= One)))
                    {
                        Local0 = ^^PCI0.SBRG.EC0.XST0 /* \_SB_.PCI0.SBRG.EC0_.XST0 */
                        Local0 |= 0x08
                        BFB0 [Zero] = Local0
                    }
                    Else
                    {
                        BFB0 [Zero] = ^^PCI0.SBRG.EC0.XST0 /* \_SB_.PCI0.SBRG.EC0_.XST0 */
                    }

                    BFB0 [One] = ^^PCI0.SBRG.EC0.XST1 /* \_SB_.PCI0.SBRG.EC0_.XST1 */
                    If ((^^PCI0.SBRG.EC0.ISDB == One))
                    {
                        If ((^^PCI0.SBRG.EC0.CYCN >= 0x32))
                        {
                            BFB0 [0x02] = ^^PCI0.SBRG.EC0.XST2 /* \_SB_.PCI0.SBRG.EC0_.XST2 */
                        }
                        Else
                        {
                            Local0 = (^^PCI0.SBRG.EC0.XST2 * ^^PCI0.SBRG.EC0.XIF1)
                            Local1 = ^^PCI0.SBRG.EC0.XIF2 /* \_SB_.PCI0.SBRG.EC0_.XIF2 */
                            BFB0 [0x02] = (Local0 / Local1)
                        }
                    }
                    Else
                    {
                        BFB0 [0x02] = ^^PCI0.SBRG.EC0.XST2 /* \_SB_.PCI0.SBRG.EC0_.XST2 */
                    }

                    BFB0 [0x03] = ^^PCI0.SBRG.EC0.XST3 /* \_SB_.PCI0.SBRG.EC0_.XST3 */
                }

                Debug = "BST1 End"
                Release (MUEX)
                Return (BFB0) /* \_SB_.BAT0.BFB0 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Debug = "BAT0_STA Start"
                If (ECON)
                {
                    Acquire (MUEX, 0xFFFF)
                    Local0 = ^^PCI0.SBRG.EC0.BPST /* \_SB_.PCI0.SBRG.EC0_.BPST */
                    Release (MUEX)
                    If ((Local0 == One))
                    {
                        Return (0x1F)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
                Else
                {
                    Return (0x0F)
                }

                Debug = "BAT0_STA END"
            }

            Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
            {
                Local0 = Arg0
                If ((^^PCI0.SBRG.EC0.BSOK == One))
                {
                    If ((^^PCI0.SBRG.EC0.ISDB == One))
                    {
                        If ((^^PCI0.SBRG.EC0.CYCN >= 0x32))
                        {
                            ^^PCI0.SBRG.EC0.BTP0 = Local0
                        }
                        Else
                        {
                            Local1 = (Local0 * ^^PCI0.SBRG.EC0.XIF2)
                            Local2 = ^^PCI0.SBRG.EC0.XIF1 /* \_SB_.PCI0.SBRG.EC0_.XIF1 */
                            ^^PCI0.SBRG.EC0.BTP0 = (Local1 / Local2)
                        }
                    }
                    Else
                    {
                        ^^PCI0.SBRG.EC0.BTP0 = Local0
                    }
                }
            }
        }

        ThermalZone (ECTZ)
        {
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (0x0F20)
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If ((ECON == Zero))
                {
                    Return (0x0BC2)
                }

                If ((^^PCI0.SBRG.EC0.THOT != Zero))
                {
                    ^^PCI0.SBRG.EC0.THOT = Zero
                    Return (0x0FA0)
                }
                Else
                {
                    Return ((0x0AAC + (^^PCI0.SBRG.EC0.XHPP * 0x0A)))
                }
            }
        }
    }

    Scope (_SB)
    {
        Device (LID1)
        {
            Name (_HID, EisaId ("PNP0C0D") /* Lid Device */)  // _HID: Hardware ID
            Name (LIDS, One)
            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                Return (LIDS) /* \_SB_.LID1.LIDS */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }

    Scope (_SB)
    {
        Device (AMW0)
        {
            Name (TJMX, 0x0064)
            Name (IGPM, Zero)
            OperationRegion (DBG8, SystemIO, 0x80, One)
            Field (DBG8, ByteAcc, NoLock, Preserve)
            {
                IO80,   8
            }

            Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (RPES, Zero)
            Name (FFNT, Zero)
            Name (DTRD, Zero)
            Name (_WDG, Buffer (0xC8)
            {
                /* 0000 */  0x6A, 0x0F, 0xBC, 0xAB, 0xA1, 0x8E, 0xD1, 0x11,  // j.......
                /* 0008 */  0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,  // ....)...
                /* 0010 */  0x41, 0x41, 0x01, 0x01, 0x6B, 0x0F, 0xBC, 0xAB,  // AA..k...
                /* 0018 */  0xA1, 0x8E, 0xD1, 0x11, 0x00, 0xA0, 0xC9, 0x06,  // ........
                /* 0020 */  0x29, 0x10, 0x00, 0x00, 0x41, 0x42, 0x01, 0x05,  // )...AB..
                /* 0028 */  0x6C, 0x0F, 0xBC, 0xAB, 0xA1, 0x8E, 0xD1, 0x11,  // l.......
                /* 0030 */  0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,  // ....)...
                /* 0038 */  0x41, 0x43, 0x01, 0x01, 0x6D, 0x0F, 0xBC, 0xAB,  // AC..m...
                /* 0040 */  0xA1, 0x8E, 0xD1, 0x11, 0x00, 0xA0, 0xC9, 0x06,  // ........
                /* 0048 */  0x29, 0x10, 0x00, 0x00, 0x42, 0x41, 0x03, 0x02,  // )...BA..
                /* 0050 */  0x6E, 0x0F, 0xBC, 0xAB, 0xA1, 0x8E, 0xD1, 0x11,  // n.......
                /* 0058 */  0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,  // ....)...
                /* 0060 */  0x42, 0x42, 0x02, 0x06, 0x6F, 0x0F, 0xBC, 0xAB,  // BB..o...
                /* 0068 */  0xA1, 0x8E, 0xD1, 0x11, 0x00, 0xA0, 0xC9, 0x06,  // ........
                /* 0070 */  0x29, 0x10, 0x00, 0x00, 0x42, 0x43, 0x0A, 0x02,  // )...BC..
                /* 0078 */  0x70, 0x0F, 0xBC, 0xAB, 0xA1, 0x8E, 0xD1, 0x11,  // p.......
                /* 0080 */  0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,  // ....)...
                /* 0088 */  0xD0, 0x00, 0x01, 0x08, 0x71, 0x0F, 0xBC, 0xAB,  // ....q...
                /* 0090 */  0xA1, 0x8E, 0xD1, 0x11, 0x00, 0xA0, 0xC9, 0x06,  // ........
                /* 0098 */  0x29, 0x10, 0x00, 0x00, 0xD1, 0x00, 0x01, 0x0C,  // ).......
                /* 00A0 */  0x72, 0x0F, 0xBC, 0xAB, 0xA1, 0x8E, 0xD1, 0x11,  // r.......
                /* 00A8 */  0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,  // ....)...
                /* 00B0 */  0xD2, 0x00, 0x01, 0x08, 0x21, 0x12, 0x90, 0x05,  // ....!...
                /* 00B8 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  // f.......
                /* 00C0 */  0xC9, 0x06, 0x29, 0x10, 0x42, 0x41, 0x01, 0x00   // ..).BA..
            })
            Name (SAA0, Buffer (0x10)
            {
                /* 0000 */  0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00   // ........
            })
            Name (SAA1, Buffer (0x10)
            {
                /* 0000 */  0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00   // ........
            })
            Name (SAA2, Buffer (0x10)
            {
                /* 0000 */  0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00   // ........
            })
            Name (SAA3, Buffer (0x10)
            {
                /* 0000 */  0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00   // ........
            })
            Name (SAB0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!@#$%^&*()1234567890-_=+[]{}")
            Name (SAB1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!@#$%^&*()1234567890-_=+[]{}")
            Name (SAB2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!@#$%^&*()1234567890-_=+[]{}")
            Name (SAB3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!@#$%^&*()1234567890-_=+[]{}")
            Name (AC00, Buffer (0x28)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,  // ........
                /* 0008 */  0x02, 0x02, 0x02, 0x02, 0x03, 0x03, 0x03, 0x03,  // ........
                /* 0010 */  0x04, 0x04, 0x04, 0x04, 0x05, 0x05, 0x05, 0x05,  // ........
                /* 0018 */  0x06, 0x06, 0x06, 0x06, 0x07, 0x07, 0x07, 0x07,  // ........
                /* 0020 */  0x08, 0x08, 0x08, 0x08, 0x09, 0x09, 0x09, 0x09   // ........
            })
            CreateDWordField (AC00, Zero, SAC0)
            CreateDWordField (AC00, 0x04, SAC1)
            CreateDWordField (AC00, 0x08, SAC2)
            CreateDWordField (AC00, 0x0C, SAC3)
            CreateDWordField (AC00, 0x10, SAC4)
            CreateDWordField (AC00, 0x14, SAC5)
            CreateDWordField (AC00, 0x18, SAC6)
            CreateDWordField (AC00, 0x1C, SAC7)
            CreateDWordField (AC00, 0x20, SAC8)
            CreateDWordField (AC00, 0x24, SAC9)
            CreateByteField (AC00, Zero, SA00)
            CreateByteField (AC00, One, SA01)
            CreateByteField (AC00, 0x02, SA02)
            CreateByteField (AC00, 0x03, SA03)
            CreateByteField (AC00, 0x04, SA04)
            CreateByteField (AC00, 0x05, SA05)
            CreateByteField (AC00, 0x06, SA06)
            CreateByteField (AC00, 0x07, SA07)
            CreateByteField (AC00, 0x08, SA08)
            CreateByteField (AC00, 0x09, SA09)
            CreateByteField (AC00, 0x0A, SA0A)
            CreateByteField (AC00, 0x0B, SA0B)
            CreateByteField (AC00, 0x0C, SA0C)
            CreateByteField (AC00, 0x0D, SA0D)
            CreateByteField (AC00, 0x0E, SA0E)
            CreateByteField (AC00, 0x0F, SA0F)
            CreateByteField (AC00, 0x10, SA10)
            CreateByteField (AC00, 0x11, SA11)
            CreateByteField (AC00, 0x12, SA12)
            CreateByteField (AC00, 0x13, SA13)
            CreateByteField (AC00, 0x14, SA14)
            CreateByteField (AC00, 0x15, SA15)
            CreateByteField (AC00, 0x16, SA16)
            CreateByteField (AC00, 0x17, SA17)
            CreateByteField (AC00, 0x18, SA18)
            CreateByteField (AC00, 0x19, SA19)
            CreateByteField (AC00, 0x1A, SA1A)
            CreateByteField (AC00, 0x1B, SA1B)
            CreateByteField (AC00, 0x1C, SA1C)
            CreateByteField (AC00, 0x1D, SA1D)
            CreateByteField (AC00, 0x1E, SA1E)
            CreateByteField (AC00, 0x1F, SA1F)
            Name (CCAA, Zero)
            Name (CCAB, Zero)
            Name (CCAC, Zero)
            Name (ECD0, Zero)
            Name (ECD1, Zero)
            Name (ECD2, Zero)
            Name (\ECOK, One)
            Mutex (\ECMX, 0x00)
            Method (WCAA, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    If ((CCAA == Zero)){}
                }
                ElseIf ((CCAA != Zero)){}
                CCAA = Arg0
            }

            Method (WCAB, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    If ((CCAB == Zero)){}
                }
                ElseIf ((CCAB != Zero)){}
                CCAB = Arg0
            }

            Method (WCAC, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    If ((CCAC == Zero)){}
                }
                ElseIf ((CCAC != Zero)){}
                CCAC = Arg0
            }

            Method (WED0, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    If ((ECD0 == Zero)){}
                }
                ElseIf ((ECD0 != Zero)){}
                ECD0 = Arg0
            }

            Method (WED1, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    If ((ECD1 == Zero)){}
                }
                ElseIf ((ECD1 != Zero)){}
                ECD1 = Arg0
            }

            Method (WED2, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    If ((ECD2 == Zero)){}
                }
                ElseIf ((ECD2 != Zero)){}
                ECD2 = Arg0
            }

            Method (GETA, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    Return (SAA0) /* \_SB_.AMW0.SAA0 */
                }

                If ((Arg0 == One))
                {
                    Return (SAA1) /* \_SB_.AMW0.SAA1 */
                }

                If ((Arg0 == 0x02))
                {
                    Return (SAA2) /* \_SB_.AMW0.SAA2 */
                }

                If ((Arg0 == 0x03))
                {
                    Return (SAA3) /* \_SB_.AMW0.SAA3 */
                }

                Return (0xFFFFFFFF)
            }

            Method (GETB, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    Return (SAB0) /* \_SB_.AMW0.SAB0 */
                }

                If ((Arg0 == One))
                {
                    Return (SAB1) /* \_SB_.AMW0.SAB1 */
                }

                If ((Arg0 == 0x02))
                {
                    Return (SAB2) /* \_SB_.AMW0.SAB2 */
                }

                If ((Arg0 == 0x03))
                {
                    Return (SAB3) /* \_SB_.AMW0.SAB3 */
                }

                Return (0xFFFFFFFF)
            }

            Method (GETC, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    Return (SAC0) /* \_SB_.AMW0.SAC0 */
                }

                If ((Arg0 == One))
                {
                    Return (SAC1) /* \_SB_.AMW0.SAC1 */
                }

                If ((Arg0 == 0x02))
                {
                    Return (SAC2) /* \_SB_.AMW0.SAC2 */
                }

                If ((Arg0 == 0x03))
                {
                    Return (SAC3) /* \_SB_.AMW0.SAC3 */
                }

                If ((Arg0 == 0x04))
                {
                    Return (SAC4) /* \_SB_.AMW0.SAC4 */
                }

                If ((Arg0 == 0x05))
                {
                    Return (SAC5) /* \_SB_.AMW0.SAC5 */
                }

                If ((Arg0 == 0x06))
                {
                    Return (SAC6) /* \_SB_.AMW0.SAC6 */
                }

                If ((Arg0 == 0x07))
                {
                    Return (SAC7) /* \_SB_.AMW0.SAC7 */
                }

                If ((Arg0 == 0x08))
                {
                    Return (SAC8) /* \_SB_.AMW0.SAC8 */
                }

                If ((Arg0 == 0x09))
                {
                    Return (SAC9) /* \_SB_.AMW0.SAC9 */
                }

                Return (0xFFFFFFFF)
            }

            Method (WQAA, 1, NotSerialized)
            {
                If ((CCAA == Zero)){}
                Return (GETA (Arg0))
            }

            Method (WQAB, 1, NotSerialized)
            {
                If ((CCAB == Zero)){}
                Return (GETB (Arg0))
            }

            Method (WQAC, 1, NotSerialized)
            {
                If ((CCAC == Zero)){}
                Return (GETC (Arg0))
            }

            Method (SETA, 2, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    SAA0 = Arg1
                    Return (SAA0) /* \_SB_.AMW0.SAA0 */
                }

                If ((Arg0 == One))
                {
                    SAA1 = Arg1
                    Return (SAA1) /* \_SB_.AMW0.SAA1 */
                }

                If ((Arg0 == 0x02))
                {
                    SAA2 = Arg1
                    Return (SAA2) /* \_SB_.AMW0.SAA2 */
                }

                If ((Arg0 == 0x03))
                {
                    SAA3 = Arg1
                    Return (SAA3) /* \_SB_.AMW0.SAA3 */
                }

                Return (0xFFFFFFFF)
            }

            Method (SETB, 2, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    SAB0 = Arg1
                    Return (SAB0) /* \_SB_.AMW0.SAB0 */
                }

                If ((Arg0 == One))
                {
                    SAB1 = Arg1
                    Return (SAB1) /* \_SB_.AMW0.SAB1 */
                }

                If ((Arg0 == 0x02))
                {
                    SAB2 = Arg1
                    Return (SAB2) /* \_SB_.AMW0.SAB2 */
                }

                If ((Arg0 == 0x03))
                {
                    SAB3 = Arg1
                    Return (SAB3) /* \_SB_.AMW0.SAB3 */
                }

                Return (0xFFFFFFFF)
            }

            Method (SETC, 2, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    AC00 = Arg1
                    OEMF (AC00)
                    Return (SAC0) /* \_SB_.AMW0.SAC0 */
                }

                If ((Arg0 == One))
                {
                    SAC1 = Arg1
                    Return (SAC1) /* \_SB_.AMW0.SAC1 */
                }

                If ((Arg0 == 0x02))
                {
                    SAC2 = Arg1
                    Return (SAC2) /* \_SB_.AMW0.SAC2 */
                }

                If ((Arg0 == 0x03))
                {
                    SAC3 = Arg1
                    Return (SAC3) /* \_SB_.AMW0.SAC3 */
                }

                If ((Arg0 == 0x04))
                {
                    SAC4 = Arg1
                    Return (SAC4) /* \_SB_.AMW0.SAC4 */
                }

                If ((Arg0 == 0x05))
                {
                    SAC5 = Arg1
                    Return (SAC5) /* \_SB_.AMW0.SAC5 */
                }

                If ((Arg0 == 0x06))
                {
                    SAC6 = Arg1
                    Return (SAC6) /* \_SB_.AMW0.SAC6 */
                }

                If ((Arg0 == 0x07))
                {
                    SAC7 = Arg1
                    Return (SAC7) /* \_SB_.AMW0.SAC7 */
                }

                If ((Arg0 == 0x08))
                {
                    SAC8 = Arg1
                    Return (SAC8) /* \_SB_.AMW0.SAC8 */
                }

                If ((Arg0 == 0x09))
                {
                    SAC9 = Arg1
                    Return (SAC9) /* \_SB_.AMW0.SAC9 */
                }

                Return (0xFFFFFFFF)
            }

            Method (WSAA, 2, NotSerialized)
            {
                If ((CCAA == Zero)){}
                Return (SETA (Arg0, Arg1))
            }

            Method (WSAB, 2, NotSerialized)
            {
                If ((CCAB == Zero)){}
                Return (SETB (Arg0, Arg1))
            }

            Method (WSAC, 2, NotSerialized)
            {
                If ((CCAC == Zero)){}
                Return (SETC (Arg0, Arg1))
            }

            Method (VINS, 1, NotSerialized)
            {
                If ((Arg0 < Zero)){}
                If ((Arg0 > 0x03)){}
            }

            Method (WMBA, 3, NotSerialized)
            {
                If ((Arg1 == One))
                {
                    Return (GETA (Arg0))
                }

                If ((Arg1 == 0x02))
                {
                    SETA (Arg0, Arg2)
                    Return (Zero)
                }

                If ((Arg1 == 0x03))
                {
                    VINS (Arg0)
                    If ((ECD0 == Zero)){}
                    SAA1 = Arg2
                    Notify (AMW0, 0xD0) // Hardware-Specific
                    Return (Zero)
                }

                Return (0xFFFFFFFF)
            }

            Method (WMBB, 3, NotSerialized)
            {
                If ((Arg1 == One))
                {
                    Return (GETB (Arg0))
                }

                If ((Arg1 == 0x02))
                {
                    SETB (Arg0, Arg2)
                    Return (Zero)
                }

                If ((Arg1 == 0x03))
                {
                    VINS (Arg0)
                    If ((ECD1 == Zero)){}
                    SAB1 = Arg2
                    Notify (AMW0, 0xD1) // Hardware-Specific
                    Return (Zero)
                }

                Return (0xFFFFFFFF)
            }

            Method (WMBC, 3, NotSerialized)
            {
                If ((Arg1 == One))
                {
                    Return (GETC (Arg0))
                }

                If ((Arg1 == 0x02))
                {
                    Return (SETC (Arg0, Arg2))
                }

                If ((Arg1 == 0x03))
                {
                    VINS (Arg0)
                    If ((ECD2 == Zero)){}
                    SAC1 = Arg2
                    Notify (AMW0, 0xD2) // Hardware-Specific
                    Return (Zero)
                }

                If ((Arg1 == 0x04))
                {
                    AC00 = Arg2
                    OEMG (AC00)
                    SAC1 = Zero
                    SAC2 = Zero
                    Return (AC00) /* \_SB_.AMW0.AC00 */
                }

                Return (0xFFFFFFFF)
            }

            Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event, xx=0x00-0xFF
            {
                If ((Arg0 == 0xD0))
                {
                    Return (SAA1) /* \_SB_.AMW0.SAA1 */
                }

                If ((Arg0 == 0xD1))
                {
                    Return (SAB1) /* \_SB_.AMW0.SAB1 */
                }

                If ((Arg0 == 0xD2))
                {
                    Return (SAC1) /* \_SB_.AMW0.SAC1 */
                }

                Return (0xFFFFFFFF)
            }

            Method (OEMG, 1, NotSerialized)
            {
                If ((SAC1 == Zero))
                {
                    WKBC (SA00, SA01, SA02, SA03)
                }

                If ((SAC1 == One))
                {
                    WKBC (SA00, SA01, SA02, SA03)
                }

                If ((SAC1 == 0x0100))
                {
                    RKBC (SA00, SA01)
                }

                If ((SAC1 == 0x0200))
                {
                    SCMD (SA00)
                    Return (SAC0) /* \_SB_.AMW0.SAC0 */
                }

                If ((SAC1 == 0x0300))
                {
                    If (((^^PCI0.SBRG.EC0.GFID != Zero) && (IGPM == One)))
                    {
                        If ((SA00 == One))
                        {
                            ^^PCI0.SBRG.EC0.IGPS (One)
                        }
                        ElseIf ((SA00 == Zero))
                        {
                            ^^PCI0.SBRG.EC0.IGPS (Zero)
                        }
                        ElseIf ((SA00 == 0x02))
                        {
                            SAC0 = ^^PCI0.SBRG.EC0.DGPS ()
                        }
                        ElseIf ((SA00 == 0x03))
                        {
                            SAC0 = 0x55
                        }
                    }
                }

                If ((SAC1 == 0x0400))
                {
                    SAC0 = TJMX /* \_SB_.AMW0.TJMX */
                }

                If ((SAC1 == 0x0500))
                {
                    If ((SA00 == One))
                    {
                        ^^INOU.CTAF (Zero)
                        SAC0 = 0xAA
                    }
                    ElseIf ((SA00 == 0x02))
                    {
                        ^^INOU.CTAF (One)
                        SAC0 = 0xBB
                    }
                    ElseIf ((SA00 == Zero))
                    {
                        ^^INOU.CTAF (0x02)
                        SAC0 = 0xCC
                    }
                    ElseIf ((SA00 == 0x03))
                    {
                        If ((^^PCI0.SBRG.EC0.ADPT == 0x09))
                        {
                            SAC0 = 0x55
                        }
                        Else
                        {
                            SAC0 = 0xAA
                        }
                    }
                    ElseIf ((SA00 == 0x04))
                    {
                        SAC0 = ^^INOU.CSTM /* \_SB_.INOU.CSTM */
                    }
                }
            }

            Method (RKBC, 2, Serialized)
            {
                IO80 = 0xDA
                If (!^^PCI0.SBRG.EC0.BFLG)
                {
                    ^^PCI0.SBRG.EC0.BFLG = One
                    If (ECOK)
                    {
                        ECOK = Zero
                        If (ECON)
                        {
                            Acquire (ECMX, 0xFFFF)
                            ^^PCI0.SBRG.EC0.DRDY = Zero
                            ^^PCI0.SBRG.EC0.LDAT = Arg0
                            ^^PCI0.SBRG.EC0.HDAT = Arg1
                            ^^PCI0.SBRG.EC0.RFLG = One
                            FFNT = 0x14
                            DTRD = Zero
                            While (!DTRD)
                            {
                                FFNT -= One
                                If ((FFNT == Zero))
                                {
                                    AC00 = 0xFEFEFEFEFEFEFEFE
                                    Break
                                }

                                Sleep (0x32)
                                DTRD = ^^PCI0.SBRG.EC0.DRDY /* \_SB_.PCI0.SBRG.EC0_.DRDY */
                            }

                            If (~(FFNT == Zero))
                            {
                                SA00 = ^^PCI0.SBRG.EC0.CMDL /* \_SB_.PCI0.SBRG.EC0_.CMDL */
                                SA01 = ^^PCI0.SBRG.EC0.CMDH /* \_SB_.PCI0.SBRG.EC0_.CMDH */
                            }

                            ^^PCI0.SBRG.EC0.DRDY = Zero
                            Release (ECMX)
                        }
                        Else
                        {
                            AC00 = 0xFEFEFEFEFEFEFEFE
                        }

                        ECOK = One
                    }
                    Else
                    {
                        AC00 = 0xFEFEFEFEFEFEFEFE
                    }
                }
                Else
                {
                    AC00 = 0xFEFEFEFEFEFEFEFE
                }

                If (ECOK)
                {
                    ^^PCI0.SBRG.EC0.BFLG = Zero
                }

                Return (AC00) /* \_SB_.AMW0.AC00 */
            }

            Method (WKBC, 4, Serialized)
            {
                If (!^^PCI0.SBRG.EC0.BFLG)
                {
                    ^^PCI0.SBRG.EC0.BFLG = One
                    If (ECOK)
                    {
                        ECOK = Zero
                        If (ECON)
                        {
                            Acquire (ECMX, 0xFFFF)
                            ^^PCI0.SBRG.EC0.DRDY = Zero
                            ^^PCI0.SBRG.EC0.LDAT = Arg0
                            ^^PCI0.SBRG.EC0.HDAT = Arg1
                            ^^PCI0.SBRG.EC0.CMDL = Arg2
                            ^^PCI0.SBRG.EC0.CMDH = Arg3
                            ^^PCI0.SBRG.EC0.WFLG = One
                            Sleep (0x0A)
                            FFNT = 0x14
                            DTRD = Zero
                            While (!DTRD)
                            {
                                Sleep (0x32)
                                FFNT--
                                If ((FFNT == Zero))
                                {
                                    AC00 = 0xFEFEFEFEFEFEFEFE
                                    Break
                                }

                                DTRD = ^^PCI0.SBRG.EC0.DRDY /* \_SB_.PCI0.SBRG.EC0_.DRDY */
                            }

                            ^^PCI0.SBRG.EC0.DRDY = Zero
                        }
                        Else
                        {
                            AC00 = 0xFEFEFEFEFEFEFEFE
                        }

                        Release (ECMX)
                    }
                    Else
                    {
                        AC00 = 0xFEFEFEFEFEFEFEFE
                    }

                    ECOK = One
                }
                Else
                {
                    AC00 = 0xFEFEFEFEFEFEFEFE
                }

                If (ECOK)
                {
                    ^^PCI0.SBRG.EC0.BFLG = Zero
                }

                Return (AC00) /* \_SB_.AMW0.AC00 */
            }

            Method (SCMD, 1, Serialized)
            {
                If (!^^PCI0.SBRG.EC0.BFLG)
                {
                    ^^PCI0.SBRG.EC0.BFLG = One
                    If (ECOK)
                    {
                        ECOK = Zero
                        If (ECON)
                        {
                            Acquire (ECMX, 0xFFFF)
                            ^^PCI0.SBRG.EC0.DRDY = Zero
                            ^^PCI0.SBRG.EC0.BFLG = One
                            ^^PCI0.SBRG.EC0.CMDL = Arg0
                            ^^PCI0.SBRG.EC0.CFLG = One
                            FFNT = 0x14
                            DTRD = Zero
                            While (!DTRD)
                            {
                                Sleep (0x0A)
                                FFNT--
                                If ((FFNT == Zero))
                                {
                                    AC00 = 0xFEFEFEFEFEFEFEFE
                                    IO80 = 0xCC
                                    Break
                                }

                                DTRD = ^^PCI0.SBRG.EC0.DRDY /* \_SB_.PCI0.SBRG.EC0_.DRDY */
                            }

                            ^^PCI0.SBRG.EC0.DRDY = Zero
                            Sleep (0x32)
                        }
                        Else
                        {
                            AC00 = 0xFEFEFEFEFEFEFEFE
                        }

                        Release (ECMX)
                    }
                    Else
                    {
                        AC00 = 0xFEFEFEFEFEFEFEFE
                    }

                    ECOK = One
                }
                Else
                {
                    AC00 = 0xFEFEFEFEFEFEFEFE
                }

                If (ECOK)
                {
                    ^^PCI0.SBRG.EC0.BFLG = Zero
                }
            }

            Method (OEMF, 1, NotSerialized)
            {
                If ((SAC1 == Zero))
                {
                    WKBC (SA00, SA01, SA02, SA03)
                    Return (SAC0) /* \_SB_.AMW0.SAC0 */
                }

                If ((SAC1 == One))
                {
                    WKBC (SA00, SA01, SA02, SA03)
                    Return (SAC0) /* \_SB_.AMW0.SAC0 */
                }

                If ((SAC1 == 0x0100))
                {
                    RKBC (SA00, SA01)
                    Return (SAC0) /* \_SB_.AMW0.SAC0 */
                }

                If ((SAC1 == 0x0200))
                {
                    SCMD (SA00)
                    Return (SAC0) /* \_SB_.AMW0.SAC0 */
                }

                SAC0 = 0xFFFFFFFF
                Return (SAC0) /* \_SB_.AMW0.SAC0 */
            }

            Name (WQBA, Buffer (0x0A93)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0x83, 0x0A, 0x00, 0x00, 0xF0, 0x49, 0x00, 0x00,  // .....I..
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0x28, 0x51, 0xA4, 0x00, 0x01, 0x06, 0x18, 0x42,  // (Q.....B
                /* 0020 */  0x10, 0x17, 0x10, 0x22, 0x21, 0x04, 0x12, 0x01,  // ..."!...
                /* 0028 */  0xA1, 0xC8, 0x2C, 0x0C, 0x86, 0x10, 0x38, 0x2E,  // ..,...8.
                /* 0030 */  0x84, 0x1C, 0x40, 0x48, 0x1C, 0x14, 0x4A, 0x08,  // ..@H..J.
                /* 0038 */  0x84, 0xFA, 0x13, 0xC8, 0xAF, 0x00, 0x84, 0x0E,  // ........
                /* 0040 */  0x05, 0xC8, 0x14, 0x60, 0x50, 0x80, 0x53, 0x04,  // ...`P.S.
                /* 0048 */  0x11, 0xF4, 0x2A, 0xC0, 0xA6, 0x00, 0x93, 0x02,  // ..*.....
                /* 0050 */  0x2C, 0x0A, 0xD0, 0x2E, 0xC0, 0xB2, 0x00, 0xDD,  // ,.......
                /* 0058 */  0x02, 0xA4, 0xC3, 0x92, 0xAD, 0x08, 0x1C, 0x21,  // .......!
                /* 0060 */  0x06, 0x1C, 0xA5, 0x13, 0x5B, 0xB8, 0x61, 0x83,  // ....[.a.
                /* 0068 */  0x17, 0x8A, 0xA2, 0x19, 0x44, 0x49, 0x50, 0xB9,  // ....DIP.
                /* 0070 */  0x00, 0xDF, 0x08, 0x02, 0x2F, 0x57, 0x80, 0xE4,  // ..../W..
                /* 0078 */  0x09, 0x48, 0xB3, 0x00, 0xC3, 0x02, 0xAC, 0x0B,  // .H......
                /* 0080 */  0x90, 0x3D, 0x04, 0x2A, 0x75, 0x08, 0x28, 0x39,  // .=.*u.(9
                /* 0088 */  0x43, 0x40, 0x0D, 0xA0, 0xD5, 0x09, 0x08, 0xBF,  // C@......
                /* 0090 */  0xD2, 0x29, 0x21, 0x09, 0xC2, 0x19, 0xAB, 0x78,  // .)!....x
                /* 0098 */  0x7C, 0xCD, 0xA2, 0xE9, 0x39, 0xC9, 0x39, 0x86,  // |...9.9.
                /* 00A0 */  0x1C, 0x8F, 0x0B, 0x3D, 0x08, 0x2E, 0x70, 0xA1,  // ...=..p.
                /* 00A8 */  0x26, 0x90, 0xFC, 0x21, 0x4B, 0x12, 0x0C, 0x4A,  // &..!K..J
                /* 00B0 */  0xC2, 0x58, 0xE8, 0xC8, 0x09, 0x30, 0x1D, 0x29,  // .X...0.)
                /* 00B8 */  0x1B, 0x90, 0x21, 0x4A, 0x1B, 0x35, 0x7A, 0x40,  // ..!J.5z@
                /* 00C0 */  0xE7, 0x77, 0x24, 0x67, 0x77, 0x74, 0x47, 0x92,  // .w$gwtG.
                /* 00C8 */  0xC0, 0xA8, 0xC7, 0x74, 0x8C, 0x85, 0xCD, 0x48,  // ...t...H
                /* 00D0 */  0xA8, 0x31, 0x9A, 0x83, 0x22, 0xE1, 0x06, 0x8D,  // .1.."...
                /* 00D8 */  0x96, 0x08, 0xAB, 0x71, 0xC5, 0x3E, 0x33, 0x0B,  // ...q.>3.
                /* 00E0 */  0x1F, 0x96, 0x30, 0x8E, 0xE0, 0xC0, 0x0E, 0xD6,  // ..0.....
                /* 00E8 */  0xA2, 0x61, 0x84, 0x56, 0x10, 0x9C, 0x06, 0x71,  // .a.V...q
                /* 00F0 */  0x14, 0x51, 0xC2, 0x30, 0x3C, 0x63, 0x06, 0x3A,  // .Q.0<c.:
                /* 00F8 */  0x4A, 0x86, 0x14, 0x26, 0xE8, 0x09, 0x04, 0x39,  // J..&...9
                /* 0100 */  0x79, 0x86, 0x65, 0x88, 0x33, 0xE0, 0x58, 0x31,  // y.e.3.X1
                /* 0108 */  0x42, 0x85, 0xC4, 0x0C, 0x24, 0xF8, 0xFF, 0xFF,  // B...$...
                /* 0110 */  0x04, 0xBA, 0xC6, 0x90, 0x67, 0x20, 0x72, 0x0F,  // ....g r.
                /* 0118 */  0x38, 0x81, 0x20, 0xD1, 0xA3, 0x04, 0x37, 0xAE,  // 8. ...7.
                /* 0120 */  0x51, 0xD9, 0x98, 0xCE, 0x06, 0x37, 0x30, 0x13,  // Q....70.
                /* 0128 */  0xC4, 0x39, 0x3C, 0x8C, 0x0C, 0x08, 0x4D, 0x20,  // .9<...M 
                /* 0130 */  0x7E, 0xEC, 0xF0, 0x09, 0xEC, 0xFE, 0x38, 0x20,  // ~.....8 
                /* 0138 */  0x85, 0x08, 0xBA, 0x10, 0x9C, 0x69, 0x8D, 0x02,  // .....i..
                /* 0140 */  0xB4, 0x61, 0xC8, 0xD6, 0xE1, 0x41, 0x67, 0x81,  // .a...Ag.
                /* 0148 */  0x58, 0x8D, 0xA1, 0x08, 0x22, 0x42, 0xD0, 0x28,  // X..."B.(
                /* 0150 */  0x06, 0x8B, 0x10, 0x2A, 0x9E, 0x51, 0xCF, 0x39,  // ...*.Q.9
                /* 0158 */  0x48, 0xD4, 0xCA, 0x40, 0x84, 0x16, 0xCC, 0x08,  // H..@....
                /* 0160 */  0xCC, 0xFE, 0x20, 0x48, 0xA8, 0xF3, 0x80, 0x7E,  // .. H...~
                /* 0168 */  0x04, 0x96, 0x04, 0x22, 0x23, 0x5B, 0x4A, 0x40,  // ..."#[J@
                /* 0170 */  0x0E, 0x0B, 0x1E, 0x8E, 0x67, 0xD2, 0xFC, 0xCC,  // ....g...
                /* 0178 */  0x34, 0x2A, 0x26, 0x01, 0x50, 0x1A, 0x40, 0x24,  // 4*&.P.@$
                /* 0180 */  0xEA, 0x64, 0x41, 0x09, 0x2C, 0xE5, 0x64, 0x40,  // .dA.,.d@
                /* 0188 */  0x6C, 0x8F, 0x4B, 0xD7, 0x80, 0x03, 0x3C, 0x75,  // l.K...<u
                /* 0190 */  0xDF, 0x0D, 0xCE, 0xCC, 0x1F, 0x0D, 0x6F, 0xC1,  // ......o.
                /* 0198 */  0x67, 0x04, 0x3E, 0x06, 0x0F, 0xF5, 0x10, 0x02,  // g.>.....
                /* 01A0 */  0x1E, 0x21, 0x3B, 0x24, 0x18, 0x10, 0xEF, 0xFD,  // .!;$....
                /* 01A8 */  0x56, 0x40, 0xE6, 0x62, 0x40, 0x76, 0x50, 0x78,  // V@.b@vPx
                /* 01B0 */  0x3E, 0x00, 0xCB, 0x24, 0x4F, 0xF3, 0x18, 0x2A,  // >..$O..*
                /* 01B8 */  0x9E, 0x1A, 0xE2, 0x48, 0xC0, 0xA7, 0x72, 0x52,  // ...H..rR
                /* 01C0 */  0xEC, 0x84, 0xC1, 0x47, 0xC7, 0x47, 0xE1, 0xB3,  // ...G.G..
                /* 01C8 */  0xC3, 0x69, 0x17, 0x7B, 0x84, 0xA0, 0xB2, 0x8E,  // .i.{....
                /* 01D0 */  0x11, 0xE8, 0xB9, 0x1F, 0x61, 0xC0, 0x97, 0x86,  // ....a...
                /* 01D8 */  0x66, 0xAF, 0x1A, 0x84, 0xE0, 0x75, 0xC0, 0x37,  // f....u.7
                /* 01E0 */  0x06, 0x9F, 0x4A, 0x7C, 0xA2, 0xC0, 0x1F, 0x4B,  // ..J|...K
                /* 01E8 */  0xE0, 0x60, 0x3F, 0x2E, 0x60, 0xFE, 0xFF, 0x63,  // .`?.`..c
                /* 01F0 */  0xF4, 0xA9, 0x04, 0x78, 0x8C, 0x80, 0x0B, 0x7F,  // ...x....
                /* 01F8 */  0x7A, 0x98, 0x40, 0x21, 0x5E, 0x02, 0x92, 0x0A,  // z.@!^...
                /* 0200 */  0x83, 0x3A, 0x17, 0xF8, 0x00, 0x02, 0x57, 0x12,  // .:....W.
                /* 0208 */  0x1C, 0x6A, 0x7C, 0x3E, 0x04, 0x9C, 0xFC, 0x61,  // .j|>...a
                /* 0210 */  0x9E, 0xC8, 0xFB, 0x81, 0x07, 0xF7, 0x24, 0x02,  // ......$.
                /* 0218 */  0xE3, 0x9C, 0xE0, 0x69, 0x9D, 0x94, 0x6F, 0x28,  // ...i..o(
                /* 0220 */  0xCF, 0x13, 0xBE, 0x5A, 0x98, 0xC0, 0x87, 0x05,  // ...Z....
                /* 0228 */  0x86, 0xC6, 0x8F, 0x25, 0x60, 0x3D, 0x68, 0xE0,  // ...%`=h.
                /* 0230 */  0xCE, 0x09, 0x70, 0x67, 0xFD, 0x4E, 0x82, 0xC1,  // ..pg.N..
                /* 0238 */  0x0A, 0x15, 0xC3, 0xA8, 0xC6, 0x88, 0xD2, 0xE8,  // ........
                /* 0240 */  0xB8, 0x35, 0x2A, 0xCF, 0xB0, 0xAF, 0x89, 0x08,  // .5*.....
                /* 0248 */  0x25, 0x94, 0x61, 0x1F, 0x47, 0xF0, 0x67, 0x10,  // %.a.G.g.
                /* 0250 */  0xB0, 0x41, 0x3F, 0x83, 0x80, 0x3D, 0xA6, 0x02,  // .A?..=..
                /* 0258 */  0x88, 0x16, 0x40, 0x14, 0x69, 0x34, 0xF4, 0xFF,  // ..@.i4..
                /* 0260 */  0x7F, 0x06, 0xE1, 0xC7, 0x02, 0x1F, 0x09, 0x9E,  // ........
                /* 0268 */  0x60, 0x7C, 0xA9, 0x30, 0xC8, 0x81, 0x9D, 0xD6,  // `|.0....
                /* 0270 */  0x03, 0xC3, 0xF3, 0x80, 0x47, 0xCE, 0x2E, 0x0A,  // ....G...
                /* 0278 */  0x3E, 0x58, 0xF8, 0x80, 0x80, 0x9F, 0x61, 0xC0,  // >X....a.
                /* 0280 */  0x03, 0x7D, 0xF8, 0x80, 0x75, 0x08, 0xC1, 0x8F,  // .}..u...
                /* 0288 */  0xE8, 0x11, 0x03, 0xF6, 0x78, 0x7C, 0x2F, 0x62,  // ....x|/b
                /* 0290 */  0x13, 0x7E, 0x1A, 0x22, 0x83, 0x40, 0x8D, 0xCC,  // .~.".@..
                /* 0298 */  0xD0, 0x1E, 0xE9, 0x69, 0xBD, 0x0F, 0xF8, 0x78,  // ...i...x
                /* 02A0 */  0x64, 0x02, 0x9F, 0x3C, 0xBC, 0x49, 0x8D, 0x07,  // d..<.I..
                /* 02A8 */  0x08, 0xDC, 0x4B, 0x1E, 0x33, 0x7C, 0x69, 0xF0,  // ..K.3|i.
                /* 02B0 */  0x7C, 0x0D, 0xA9, 0xC3, 0x85, 0x6C, 0x8C, 0x07,  // |....l..
                /* 02B8 */  0x35, 0x0A, 0x5F, 0x60, 0x38, 0x81, 0x83, 0x43,  // 5._`8..C
                /* 02C0 */  0xE8, 0x08, 0xE0, 0xB3, 0x0C, 0xF0, 0x14, 0x78,  // .......x
                /* 02C8 */  0xA8, 0x00, 0xCD, 0x8D, 0xC3, 0x60, 0x70, 0x06,  // .....`p.
                /* 02D0 */  0x80, 0x1B, 0x30, 0xEE, 0xFF, 0x3F, 0x60, 0x8E,  // ..0..?`.
                /* 02D8 */  0x79, 0xC2, 0x55, 0xC3, 0xEB, 0x1E, 0x60, 0x75,  // y.U...`u
                /* 02E0 */  0x17, 0x17, 0x08, 0x67, 0x1D, 0xEC, 0x31, 0x06,  // ...g..1.
                /* 02E8 */  0xDE, 0xB9, 0xC0, 0xA3, 0x39, 0x99, 0xB3, 0x78,  // ....9..x
                /* 02F0 */  0xE1, 0x60, 0x78, 0x2F, 0x1C, 0xCF, 0x2F, 0x1E,  // .`x/../.
                /* 02F8 */  0x03, 0xFE, 0x30, 0x03, 0x7C, 0xE4, 0x9E, 0x64,  // ..0.|..d
                /* 0300 */  0x50, 0x02, 0x0F, 0x33, 0x00, 0x25, 0x8E, 0x21,  // P..3.%.!
                /* 0308 */  0xF8, 0xB1, 0xE0, 0xFE, 0xFF, 0x87, 0x19, 0xF8,  // ........
                /* 0310 */  0xB7, 0x86, 0x87, 0x19, 0xB0, 0x87, 0x3B, 0xCC,  // ......;.
                /* 0318 */  0x00, 0x34, 0x79, 0xB9, 0x78, 0xE0, 0xB8, 0x51,  // .4y.x..Q
                /* 0320 */  0xF8, 0x08, 0xE2, 0xCB, 0xA5, 0x09, 0x1C, 0xF8,  // ........
                /* 0328 */  0x30, 0x03, 0xB4, 0xFE, 0xFF, 0x87, 0x19, 0xE0,  // 0.......
                /* 0330 */  0x75, 0x1E, 0x00, 0xDF, 0xA9, 0x05, 0x77, 0x90,  // u.....w.
                /* 0338 */  0x01, 0x1B, 0xC2, 0x29, 0xE0, 0xCE, 0x31, 0xC0,  // ...)..1.
                /* 0340 */  0xE7, 0x80, 0xC7, 0x23, 0xBC, 0x02, 0x24, 0x0E,  // ...#..$.
                /* 0348 */  0x06, 0x75, 0x8E, 0x01, 0x5C, 0x9D, 0x50, 0x9F,  // .u..\.P.
                /* 0350 */  0x11, 0x60, 0xFE, 0xFF, 0xCF, 0x31, 0xE0, 0xBF,  // .`...1..
                /* 0358 */  0x0B, 0x9F, 0x50, 0x9F, 0xF7, 0x00, 0x79, 0x3C,  // ..P...y<
                /* 0360 */  0xC6, 0x80, 0x0E, 0xE4, 0x31, 0x06, 0xEC, 0xD1,  // ....1...
                /* 0368 */  0x8E, 0x31, 0x00, 0x55, 0x9C, 0x1C, 0x63, 0xD0,  // .1.U..c.
                /* 0370 */  0xA7, 0x03, 0x5F, 0x16, 0x3C, 0x2F, 0xFF, 0xFF,  // .._.</..
                /* 0378 */  0x8F, 0x31, 0x80, 0xCF, 0x33, 0x2F, 0x77, 0x76,  // .1..3/wv
                /* 0380 */  0x7C, 0x10, 0x81, 0x07, 0xF2, 0x18, 0x03, 0xD6,  // |.......
                /* 0388 */  0x91, 0xE3, 0x4E, 0x31, 0xC0, 0x47, 0xD8, 0xC2,  // ..N1.G..
                /* 0390 */  0x69, 0x9C, 0x83, 0xAF, 0x5F, 0x03, 0x14, 0xC6,  // i..._...
                /* 0398 */  0xA7, 0x18, 0xE0, 0xFC, 0xFF, 0x3F, 0xC5, 0x80,  // .....?..
                /* 03A0 */  0x37, 0xC0, 0x29, 0x06, 0x94, 0x07, 0x79, 0xCC,  // 7.)...y.
                /* 03A8 */  0x3D, 0x86, 0x41, 0x44, 0x3D, 0x2A, 0x9F, 0x24,  // =.AD=*.$
                /* 03B0 */  0x7C, 0xA0, 0xF7, 0xC9, 0xC4, 0x97, 0x79, 0x83,  // |.....y.
                /* 03B8 */  0x85, 0x7C, 0xF3, 0x66, 0x37, 0x7A, 0x5F, 0x7E,  // .|.f7z_~
                /* 03C0 */  0xE1, 0x9C, 0x65, 0xC0, 0x36, 0xAE, 0x27, 0x3C,  // ..e.6.'<
                /* 03C8 */  0xD0, 0x9F, 0x0B, 0xF4, 0x5D, 0xF2, 0x59, 0x06,  // ....].Y.
                /* 03D0 */  0x70, 0xFA, 0xFF, 0x3F, 0xCB, 0x00, 0x97, 0x13,  // p..?....
                /* 03D8 */  0x1A, 0x58, 0x27, 0xF1, 0x50, 0x0F, 0xBC, 0x42,  // .X'.P..B
                /* 03E0 */  0x7A, 0x38, 0x10, 0xB0, 0x20, 0x6B, 0x95, 0x8D,  // z8.. k..
                /* 03E8 */  0xB5, 0x7A, 0x10, 0x54, 0xF8, 0x21, 0x41, 0x87,  // .z.T.!A.
                /* 03F0 */  0xAB, 0x67, 0x09, 0x9F, 0x6B, 0x61, 0x88, 0x85,  // .g..ka..
                /* 03F8 */  0xD3, 0x51, 0xC7, 0x10, 0x96, 0x49, 0x21, 0x91,  // .Q...I!.
                /* 0400 */  0x10, 0x1A, 0x90, 0xE1, 0x2C, 0x0B, 0x8E, 0x82,  // ....,...
                /* 0408 */  0xF8, 0x00, 0xE0, 0xC8, 0x10, 0x3A, 0x39, 0xC3,  // .....:9.
                /* 0410 */  0x8D, 0x08, 0xA1, 0xE3, 0x83, 0x0F, 0x0C, 0xF8,  // ........
                /* 0418 */  0xC1, 0x1D, 0xD9, 0x89, 0x79, 0x16, 0x3E, 0xD8,  // ....y.>.
                /* 0420 */  0xE0, 0x8E, 0x20, 0x70, 0xA7, 0x86, 0x5D, 0xE3,  // .. p..].
                /* 0428 */  0xA1, 0xE0, 0x06, 0xE2, 0xF3, 0x11, 0x1F, 0x83,  // ........
                /* 0430 */  0x6F, 0x06, 0x67, 0x61, 0x02, 0x76, 0x5C, 0x86,  // o.ga.v\.
                /* 0438 */  0xFF, 0xFF, 0x3F, 0x2E, 0xC3, 0x1F, 0x00, 0xFE,  // ..?.....
                /* 0440 */  0x94, 0x00, 0x07, 0xC8, 0x97, 0x02, 0x2B, 0x3D,  // ......+=
                /* 0448 */  0x18, 0xD0, 0x79, 0x84, 0x08, 0x13, 0xCD, 0x27,  // ..y....'
                /* 0450 */  0x13, 0xD4, 0xE8, 0x75, 0x94, 0xB2, 0xAC, 0xB1,  // ...u....
                /* 0458 */  0xA1, 0x06, 0xEB, 0x33, 0x0D, 0xC3, 0x7E, 0x5D,  // ...3..~]
                /* 0460 */  0xC1, 0x9C, 0xA5, 0x30, 0xB0, 0x1E, 0x3E, 0x87,  // ...0..>.
                /* 0468 */  0x35, 0x5A, 0xD8, 0xA3, 0x7E, 0x98, 0xF0, 0x45,  // 5Z..~..E
                /* 0470 */  0xC4, 0x37, 0x25, 0xDF, 0x61, 0x7C, 0x04, 0x01,  // .7%.a|..
                /* 0478 */  0xCB, 0xB1, 0x0A, 0xFE, 0x81, 0x18, 0x3C, 0xC3,  // ......<.
                /* 0480 */  0x3C, 0x35, 0x1F, 0x10, 0x82, 0x3D, 0xD7, 0x78,  // <5...=.x
                /* 0488 */  0x74, 0xBE, 0x13, 0x18, 0x34, 0x9E, 0xE7, 0x60,  // t...4..`
                /* 0490 */  0x0C, 0x9F, 0x6F, 0xD8, 0x99, 0xE2, 0xF9, 0x06,  // ..o.....
                /* 0498 */  0x5E, 0x88, 0x43, 0x05, 0x94, 0x53, 0x20, 0x3B,  // ^.C..S ;
                /* 04A0 */  0x54, 0x00, 0xE3, 0xFF, 0xFF, 0x68, 0x7D, 0x7F,  // T....h}.
                /* 04A8 */  0xF1, 0xD0, 0xF9, 0xA1, 0x02, 0xF0, 0x2C, 0xE1,  // ......,.
                /* 04B0 */  0x50, 0x01, 0xBA, 0x83, 0x80, 0x0F, 0x15, 0xC0,  // P.......
                /* 04B8 */  0x15, 0xD5, 0x47, 0x02, 0x70, 0x9C, 0x49, 0xF9,  // ..G.p.I.
                /* 04C0 */  0x95, 0x02, 0x9C, 0xA1, 0x56, 0xA9, 0xFF, 0xFF,  // ....V...
                /* 04C8 */  0x91, 0x02, 0x27, 0x7E, 0xD4, 0x3A, 0x7C, 0x9D,  // ..'~.:|.
                /* 04D0 */  0xC6, 0xB1, 0xF9, 0x3A, 0x80, 0x17, 0x7C, 0xA4,  // ...:..|.
                /* 04D8 */  0x40, 0x49, 0xA5, 0x90, 0xD0, 0x23, 0x05, 0x4A,  // @I...#.J
                /* 04E0 */  0x1A, 0x1C, 0x05, 0xF1, 0xD0, 0x1D, 0x1B, 0x42,  // .......B
                /* 04E8 */  0xA7, 0x49, 0xFC, 0x29, 0xE9, 0x20, 0x18, 0x81,  // .I.). ..
                /* 04F0 */  0x63, 0x1E, 0x29, 0x40, 0x71, 0x48, 0x3A, 0x60,  // c.)@qH:`
                /* 04F8 */  0xB0, 0x1C, 0xFC, 0xD8, 0x0A, 0x8F, 0xCE, 0xC6,  // ........
                /* 0500 */  0x4F, 0x6C, 0x04, 0xC5, 0xC3, 0xF5, 0x64, 0xF9,  // Ol....d.
                /* 0508 */  0x41, 0xCE, 0xD7, 0x38, 0x76, 0xE0, 0xE3, 0x07,  // A..8v...
                /* 0510 */  0x0B, 0xB8, 0x07, 0x49, 0xF0, 0x1D, 0x2A, 0x80,  // ...I..*.
                /* 0518 */  0x87, 0x9C, 0x43, 0x05, 0xE8, 0x20, 0x7D, 0xA8,  // ..C.. }.
                /* 0520 */  0x00, 0x0E, 0xFF, 0xFF, 0x43, 0x05, 0x78, 0x8E,  // ....C.x.
                /* 0528 */  0x71, 0x3E, 0x14, 0x80, 0xE3, 0x18, 0x66, 0x90,  // q>....f.
                /* 0530 */  0xB7, 0x44, 0xDC, 0xB9, 0xCD, 0x18, 0x51, 0xDE,  // .D....Q.
                /* 0538 */  0xE7, 0x3C, 0x2A, 0x9F, 0x2C, 0x30, 0x68, 0xCF,  // .<*.,0h.
                /* 0540 */  0x00, 0x3E, 0xDF, 0xB1, 0x7B, 0x05, 0x1E, 0xE8,  // .>..{...
                /* 0548 */  0xB8, 0x5E, 0x62, 0x78, 0x78, 0x15, 0xC3, 0x61,  // .^bxx..a
                /* 0550 */  0x61, 0x8E, 0x13, 0x5E, 0x37, 0x85, 0xF1, 0xE1,  // a..^7...
                /* 0558 */  0x13, 0x70, 0x75, 0x00, 0x00, 0xCF, 0xE1, 0x13,  // .pu.....
                /* 0560 */  0x58, 0xDC, 0x1A, 0xB1, 0x67, 0x4F, 0xB8, 0xFF,  // X...gO..
                /* 0568 */  0xFF, 0xB3, 0x27, 0xFE, 0x5A, 0xF1, 0xEC, 0x09,  // ..'.Z...
                /* 0570 */  0xB0, 0x13, 0xEC, 0x08, 0xB1, 0x67, 0x4F, 0xF0,  // .....gO.
                /* 0578 */  0xFF, 0xFF, 0xCF, 0x9E, 0x3C, 0xCA, 0xD9, 0x93,  // ....<...
                /* 0580 */  0x4A, 0x3F, 0x35, 0xA1, 0x0E, 0x1D, 0x3E, 0xD0,  // J?5...>.
                /* 0588 */  0xF9, 0xEC, 0xC9, 0xA6, 0x83, 0x95, 0x78, 0x68,  // ......xh
                /* 0590 */  0x42, 0x89, 0xA3, 0xD0, 0x79, 0xC9, 0x87, 0x26,  // B...y..&
                /* 0598 */  0x2E, 0x06, 0x8E, 0x82, 0x78, 0xFC, 0x0E, 0x7A,  // ....x..z
                /* 05A0 */  0x66, 0x40, 0x1F, 0xEB, 0xF0, 0xC1, 0x8E, 0x9E,  // f@......
                /* 05A8 */  0xA0, 0x38, 0xBE, 0x83, 0x67, 0x66, 0xB8, 0x5B,  // .8..gf.[
                /* 05B0 */  0x1D, 0xEE, 0xB4, 0x04, 0xEE, 0xE3, 0x03, 0xFE,  // ........
                /* 05B8 */  0xB4, 0x04, 0x3C, 0x44, 0x9C, 0x3A, 0x01, 0x05,  // ..<D.:..
                /* 05C0 */  0xFF, 0xFF, 0xD3, 0x12, 0xDC, 0xF1, 0x3C, 0x75,  // ......<u
                /* 05C8 */  0x02, 0xAF, 0x4B, 0x00, 0x56, 0xF8, 0x69, 0x02,  // ..K.V.i.
                /* 05D0 */  0xCA, 0x31, 0x8F, 0x9D, 0x26, 0x80, 0xF1, 0x89,  // .1..&...
                /* 05D8 */  0x0E, 0x77, 0x9A, 0x00, 0x9C, 0x1E, 0x37, 0xF1,  // .w....7.
                /* 05E0 */  0xFF, 0xFF, 0xE3, 0x26, 0xE0, 0xF8, 0x0C, 0x80,  // ...&....
                /* 05E8 */  0x3F, 0x6E, 0xC2, 0x3D, 0x08, 0xE1, 0x8F, 0x9B,  // ?n.=....
                /* 05F0 */  0x80, 0xDF, 0xFF, 0xFF, 0x71, 0x13, 0x60, 0xE0,  // ....q.`.
                /* 05F8 */  0xBD, 0x02, 0x77, 0xDB, 0xC4, 0x9D, 0x19, 0xA4,  // ..w.....
                /* 0600 */  0xE4, 0xAC, 0x89, 0x91, 0x79, 0xDC, 0x04, 0x5A,  // ....y..Z
                /* 0608 */  0xFF, 0xFF, 0xE3, 0x26, 0x60, 0xD3, 0xEA, 0xA8,  // ...&`...
                /* 0610 */  0xC8, 0xF9, 0x84, 0x1F, 0x37, 0xC1, 0x05, 0xF1,  // ....7...
                /* 0618 */  0xB8, 0x09, 0xF6, 0x68, 0xC7, 0x4D, 0x40, 0xDB,  // ...h.M@.
                /* 0620 */  0xFF, 0xFF, 0xB8, 0x09, 0x7C, 0x2F, 0x33, 0x3E,  // ....|/3>
                /* 0628 */  0x6E, 0x82, 0xF3, 0x9A, 0x80, 0x3B, 0x6D, 0x02,  // n....;m.
                /* 0630 */  0x8F, 0xF8, 0x3A, 0xCE, 0x33, 0xEC, 0xB4, 0x09,  // ..:.3...
                /* 0638 */  0xF3, 0x10, 0x81, 0x3D, 0xD0, 0x81, 0xEF, 0xCC,  // ...=....
                /* 0640 */  0x84, 0x3F, 0x6D, 0x02, 0xAF, 0x99, 0x9D, 0xE4,  // .?m.....
                /* 0648 */  0x99, 0xB1, 0xFB, 0x1C, 0xEE, 0xB0, 0x04, 0x96,  // ........
                /* 0650 */  0xFF, 0xFF, 0x61, 0x09, 0xF8, 0x9E, 0x36, 0x01,  // ..a...6.
                /* 0658 */  0xF3, 0xE7, 0x1A, 0xF4, 0x69, 0x13, 0xE2, 0x69,  // ....i..i
                /* 0660 */  0x02, 0xD8, 0xFE, 0xFF, 0x4F, 0x9B, 0xE0, 0x3D,  // ....O..=
                /* 0668 */  0x4D, 0x00, 0xAE, 0x56, 0xEE, 0xD3, 0x26, 0xE0,  // M..V..&.
                /* 0670 */  0x46, 0xF0, 0x69, 0x13, 0x28, 0xDD, 0x20, 0x70,  // F.i.(. p
                /* 0678 */  0x81, 0xCE, 0x12, 0x68, 0xE9, 0x87, 0x4D, 0xD4,  // ...h..M.
                /* 0680 */  0xFF, 0x1F, 0x14, 0x77, 0xD6, 0x04, 0xF8, 0x75,  // ...w...u
                /* 0688 */  0x34, 0xF1, 0x59, 0x13, 0xF0, 0xF1, 0xFF, 0x3F,  // 4.Y....?
                /* 0690 */  0x52, 0xE0, 0x8E, 0x87, 0xCF, 0x9A, 0xC0, 0xEF,  // R.......
                /* 0698 */  0x2E, 0x81, 0xB9, 0x6A, 0xE2, 0x52, 0x2D, 0x55,  // ...j.R-U
                /* 06A0 */  0x87, 0x62, 0x5C, 0x86, 0x87, 0x84, 0x0E, 0x64,  // .b\....d
                /* 06A8 */  0xEC, 0xD2, 0x03, 0x43, 0x37, 0x9C, 0x8E, 0x14,  // ...C7...
                /* 06B0 */  0x3E, 0x51, 0x58, 0x31, 0x85, 0x34, 0x9D, 0x2C,  // >QX1.4.,
                /* 06B8 */  0x50, 0x2A, 0x4E, 0x16, 0x14, 0xC4, 0x80, 0x8E,  // P*N.....
                /* 06C0 */  0x08, 0x21, 0x2B, 0x27, 0x0B, 0x94, 0x8A, 0x43,  // .!+'...C
                /* 06C8 */  0x0F, 0x32, 0xD3, 0xC5, 0x82, 0x4E, 0xC6, 0xB3,  // .2...N..
                /* 06D0 */  0xE6, 0xD7, 0x50, 0x5F, 0x2C, 0x18, 0x6E, 0x7D,  // ..P_,.n}
                /* 06D8 */  0x57, 0x1E, 0x90, 0xAB, 0x39, 0x29, 0xA0, 0x66,  // W...9).f
                /* 06E0 */  0xE1, 0x03, 0x05, 0x46, 0xD7, 0x7D, 0x02, 0x34,  // ...F.}.4
                /* 06E8 */  0x57, 0xC9, 0x87, 0x51, 0xCF, 0x08, 0x77, 0x9E,  // W..Q..w.
                /* 06F0 */  0x00, 0x23, 0x3A, 0xBF, 0x3E, 0x79, 0xE6, 0xFC,  // .#:.>y..
                /* 06F8 */  0x32, 0xEC, 0x99, 0x1B, 0xC4, 0x33, 0xFF, 0xFF,  // 2....3..
                /* 0700 */  0x27, 0x18, 0xF5, 0x8A, 0x82, 0x9E, 0x89, 0xEF,  // '.......
                /* 0708 */  0x59, 0xB8, 0xBB, 0x1D, 0xF0, 0x1F, 0x9B, 0x2F,  // Y....../
                /* 0710 */  0x27, 0xC0, 0x5B, 0xC8, 0xE5, 0x04, 0x74, 0x23,  // '.[...t#
                /* 0718 */  0xF7, 0xE5, 0x04, 0xB8, 0x0E, 0xE3, 0xE5, 0x04,  // ........
                /* 0720 */  0x4C, 0xB7, 0x12, 0x1F, 0x4D, 0x7C, 0x0C, 0xF6,  // L...M|..
                /* 0728 */  0x15, 0x0A, 0xF3, 0xFF, 0xBF, 0x42, 0x81, 0x2D,  // .....B.-
                /* 0730 */  0xE5, 0xD5, 0x04, 0x75, 0x85, 0x72, 0x82, 0xAB,  // ...u.r..
                /* 0738 */  0x09, 0xE2, 0x0A, 0xFC, 0xCA, 0xE0, 0xC3, 0xB1,  // ........
                /* 0740 */  0x07, 0xE3, 0x9B, 0x09, 0xC0, 0xD4, 0xFF, 0xFF,  // ........
                /* 0748 */  0xCD, 0x04, 0x70, 0x78, 0xAA, 0xF3, 0xCD, 0x04,  // ..px....
                /* 0750 */  0x5C, 0xB0, 0xFC, 0x66, 0x02, 0x3C, 0xA3, 0xDC,  // \..f.<..
                /* 0758 */  0x4C, 0x80, 0x2C, 0x4C, 0xA8, 0x28, 0xC7, 0xF1,  // L.,L.(..
                /* 0760 */  0x78, 0xE0, 0xEB, 0xB8, 0x11, 0x9E, 0xC8, 0x5F,  // x......_
                /* 0768 */  0xE1, 0xE3, 0xC4, 0x78, 0x31, 0xC1, 0x45, 0x7D,  // ...x1.E}
                /* 0770 */  0x3A, 0x98, 0x40, 0xFF, 0xFF, 0x40, 0xE3, 0x57,  // :.@..@.W
                /* 0778 */  0x38, 0x18, 0xD4, 0x8D, 0xC3, 0x07, 0x08, 0xFC,  // 8.......
                /* 0780 */  0x81, 0x90, 0x8D, 0x91, 0x49, 0x82, 0x43, 0x9D,  // ....I.C.
                /* 0788 */  0x0E, 0x3C, 0x92, 0xE3, 0x38, 0x88, 0xF7, 0x41,  // .<..8..A
                /* 0790 */  0xCF, 0xF0, 0xC0, 0x42, 0xB2, 0x4B, 0x87, 0x07,  // ...B.K..
                /* 0798 */  0xCB, 0x6F, 0x2E, 0x3E, 0x20, 0xBC, 0x91, 0xFB,  // .o.> ...
                /* 07A0 */  0xDC, 0x16, 0xF1, 0x89, 0xDC, 0x07, 0x43, 0x76,  // ......Cv
                /* 07A8 */  0x2E, 0x60, 0x68, 0x1C, 0x1A, 0x3B, 0x0C, 0xCF,  // .`h..;..
                /* 07B0 */  0xD1, 0x83, 0x38, 0x8C, 0x97, 0x02, 0x13, 0x78,  // ..8....x
                /* 07B8 */  0x42, 0xE7, 0xFC, 0xF0, 0xF8, 0x22, 0xF1, 0x64,  // B....".d
                /* 07C0 */  0x17, 0x35, 0x46, 0x73, 0x50, 0x24, 0xC2, 0x31,  // .5FsP$.1
                /* 07C8 */  0x00, 0x34, 0x87, 0x88, 0x33, 0x38, 0x85, 0x68,  // .4..38.h
                /* 07D0 */  0x27, 0xEF, 0x63, 0x1D, 0xAC, 0xEB, 0x1D, 0x0E,  // '.c.....
                /* 07D8 */  0xE8, 0x3D, 0x0F, 0x7B, 0x25, 0xF0, 0x49, 0xD2,  // .=.{%.I.
                /* 07E0 */  0xD7, 0x4C, 0x63, 0xC4, 0xF3, 0xF9, 0x0E, 0x37,  // .Lc....7
                /* 07E8 */  0x8D, 0x23, 0xC2, 0x9C, 0x17, 0x0C, 0xF8, 0xA6,  // .#......
                /* 07F0 */  0xE1, 0x73, 0x03, 0x73, 0x7F, 0xBA, 0xD0, 0xB1,  // .s.s....
                /* 07F8 */  0x27, 0xC2, 0x01, 0x9D, 0xDC, 0xC3, 0x68, 0x6F,  // '.....ho
                /* 0800 */  0x18, 0xB2, 0x75, 0x52, 0x79, 0xC0, 0x10, 0x56,  // ..uRy..V
                /* 0808 */  0x63, 0x28, 0x82, 0x88, 0x10, 0x34, 0x8A, 0xC1,  // c(...4..
                /* 0810 */  0x22, 0x84, 0x8A, 0x67, 0xD4, 0xD3, 0x0C, 0xF2,  // "..g....
                /* 0818 */  0x14, 0xF3, 0xE0, 0x11, 0x24, 0x5A, 0x30, 0x23,  // ....$Z0#
                /* 0820 */  0x30, 0xFB, 0x23, 0x65, 0xEF, 0x0C, 0x1D, 0x0C,  // 0.#e....
                /* 0828 */  0x1C, 0x69, 0x34, 0xA8, 0xD3, 0x87, 0x0F, 0x07,  // .i4.....
                /* 0830 */  0x3E, 0x18, 0x1C, 0xDD, 0xB3, 0xBF, 0xCF, 0x0F,  // >.......
                /* 0838 */  0x9E, 0xDA, 0x91, 0x3D, 0xF3, 0xBF, 0x74, 0x32,  // ...=..t2
                /* 0840 */  0x02, 0x9F, 0x57, 0x7C, 0xEC, 0xF0, 0x31, 0x01,  // ..W|..1.
                /* 0848 */  0x3F, 0xC8, 0x80, 0xFF, 0xFF, 0xF7, 0x83, 0x27,  // ?......'
                /* 0850 */  0x0D, 0xB0, 0x9C, 0x53, 0xE0, 0x8F, 0xC7, 0xC7,  // ...S....
                /* 0858 */  0x01, 0x1F, 0xAF, 0xB9, 0xFC, 0x41, 0xA0, 0x0E,  // .....A..
                /* 0860 */  0x37, 0x7C, 0xA4, 0xA7, 0xF5, 0x56, 0xE0, 0xB3,  // 7|...V..
                /* 0868 */  0x80, 0x09, 0x2C, 0xF6, 0xE2, 0x44, 0xC7, 0x03,  // ..,..D..
                /* 0870 */  0xFE, 0x6B, 0xC6, 0x53, 0xC2, 0xAB, 0x86, 0xB1,  // .k.S....
                /* 0878 */  0x7D, 0x58, 0xB0, 0x94, 0x23, 0x86, 0x6C, 0x1C,  // }X..#.l.
                /* 0880 */  0xB9, 0xA1, 0x46, 0x3F, 0xB1, 0x50, 0x51, 0x87,  // ..F?.PQ.
                /* 0888 */  0x17, 0xD4, 0xD1, 0xC2, 0xA7, 0x0A, 0x86, 0xCA,  // ........
                /* 0890 */  0x0F, 0xF4, 0x98, 0x03, 0x0B, 0xF8, 0x2F, 0x3E,  // ....../>
                /* 0898 */  0x3E, 0x5A, 0x80, 0x63, 0x8E, 0x6F, 0x12, 0xD8,  // >Z.c.o..
                /* 08A0 */  0xD1, 0xE1, 0xCE, 0x3E, 0xF8, 0x11, 0xE3, 0x27,  // ...>...'
                /* 08A8 */  0x70, 0xC6, 0x55, 0x63, 0xEB, 0x22, 0x60, 0x75,  // p.Uc."`u
                /* 08B0 */  0x53, 0x40, 0x13, 0x18, 0xE9, 0x59, 0x08, 0xD6,  // S@...Y..
                /* 08B8 */  0xFF, 0xFF, 0x2C, 0x84, 0x3B, 0x18, 0x78, 0x50,  // ..,.;.xP
                /* 08C0 */  0xE7, 0x74, 0x16, 0x07, 0xE6, 0x21, 0xC4, 0x3B,  // .t...!.;
                /* 08C8 */  0x8D, 0xC7, 0x0E, 0x3E, 0x09, 0xFC, 0x59, 0xF9,  // ...>..Y.
                /* 08D0 */  0x28, 0xB1, 0x83, 0xE0, 0xC7, 0x89, 0x47, 0x23,  // (.....G#
                /* 08D8 */  0x36, 0x88, 0xB7, 0x23, 0xCF, 0xE3, 0xB8, 0x7C,  // 6..#...|
                /* 08E0 */  0x52, 0x31, 0xC2, 0x11, 0x3C, 0xA0, 0x3C, 0xB0,  // R1..<.<.
                /* 08E8 */  0xF8, 0x5E, 0x73, 0x04, 0x4F, 0x1E, 0xEF, 0x06,  // .^s.O...
                /* 08F0 */  0x6F, 0x15, 0x1E, 0x37, 0xF6, 0x60, 0xE1, 0x21,  // o..7.`.!
                /* 08F8 */  0xF0, 0x01, 0xBC, 0xE4, 0x9C, 0xA6, 0xCF, 0x4A,  // .......J
                /* 0900 */  0x27, 0x86, 0x3B, 0x19, 0xF0, 0x61, 0x61, 0x8E,  // '.;..aa.
                /* 0908 */  0x4C, 0xB8, 0x80, 0x47, 0x1C, 0x54, 0xA4, 0x53,  // L..G.T.S
                /* 0910 */  0x0E, 0x40, 0x90, 0xCB, 0x09, 0xFB, 0xFF, 0xE3,  // .@......
                /* 0918 */  0xF2, 0x4B, 0x0E, 0xE6, 0x94, 0x03, 0xB6, 0x03,  // .K......
                /* 0920 */  0x8E, 0x4F, 0x39, 0xE0, 0x96, 0x70, 0xCA, 0x01,  // .O9..p..
                /* 0928 */  0x68, 0xF2, 0xA4, 0xF1, 0xC0, 0x71, 0xA3, 0xF0,  // h....q..
                /* 0930 */  0xD1, 0xC4, 0xE7, 0x87, 0x27, 0x0E, 0x16, 0xF8,  // ....'...
                /* 0938 */  0x94, 0x03, 0xDA, 0xFF, 0xFF, 0x29, 0x07, 0xBC,  // .....)..
                /* 0940 */  0x47, 0x48, 0xF0, 0x5C, 0x34, 0xDE, 0x24, 0x70,  // GH.\4.$p
                /* 0948 */  0x97, 0x1C, 0xCC, 0x79, 0x00, 0x7C, 0x07, 0x1C,  // ...y.|..
                /* 0950 */  0xF0, 0x0F, 0x09, 0x47, 0xE0, 0x03, 0x0E, 0xE0,  // ...G....
                /* 0958 */  0xE4, 0x48, 0xC8, 0xE3, 0x3C, 0x0C, 0x14, 0x07,  // .H..<...
                /* 0960 */  0x06, 0x75, 0xC0, 0x01, 0x6E, 0xFF, 0xFF, 0x03,  // .u..n...
                /* 0968 */  0x0E, 0xDC, 0x00, 0x67, 0x1A, 0x20, 0x7A, 0xBF,  // ...g. z.
                /* 0970 */  0xC4, 0x5D, 0x69, 0x30, 0x07, 0x20, 0x70, 0x9E,  // .]i0. p.
                /* 0978 */  0x6F, 0xC0, 0x75, 0xA9, 0x79, 0xBE, 0x01, 0xFB,  // o.u.y...
                /* 0980 */  0x53, 0xC4, 0xE7, 0x1B, 0xC0, 0xDF, 0xFF, 0xFF,  // S.......
                /* 0988 */  0x7C, 0x03, 0x3C, 0xCF, 0xD7, 0xB8, 0x51, 0xF8,  // |.<...Q.
                /* 0990 */  0x16, 0x8F, 0x3B, 0xDF, 0x00, 0x5E, 0x6E, 0x15,  // ..;..^n.
                /* 0998 */  0xB8, 0x33, 0x21, 0xEE, 0xA8, 0x0D, 0xBE, 0x19,  // .3!.....
                /* 09A0 */  0x3C, 0xDF, 0x80, 0x7D, 0xEC, 0xB8, 0xE3, 0x0D,  // <..}....
                /* 09A8 */  0xF0, 0xF9, 0xFF, 0x1F, 0x6F, 0x80, 0x83, 0x42,  // ....o..B
                /* 09B0 */  0x9B, 0x3E, 0x35, 0x1A, 0xB5, 0x6A, 0x50, 0xA6,  // .>5..jP.
                /* 09B8 */  0x46, 0x99, 0x06, 0xB5, 0xFA, 0x54, 0x6A, 0xCC,  // F....Tj.
                /* 09C0 */  0xD8, 0x70, 0x9F, 0x3A, 0xF4, 0x44, 0xD0, 0x19,  // .p.:.D..
                /* 09C8 */  0xC1, 0xB2, 0x1F, 0x1E, 0x02, 0x71, 0x68, 0x10,  // .....qh.
                /* 09D0 */  0xEE, 0x01, 0x84, 0xC5, 0x55, 0x01, 0xC2, 0xC4,  // ....U...
                /* 09D8 */  0x3E, 0x0D, 0x04, 0x42, 0x9E, 0x06, 0x02, 0xB1,  // >..B....
                /* 09E0 */  0x34, 0x1F, 0x20, 0x2C, 0x18, 0x08, 0x5F, 0xBC,  // 4. ,.._.
                /* 09E8 */  0x40, 0x1C, 0xE8, 0x01, 0xA1, 0xD3, 0x07, 0x79,  // @......y
                /* 09F0 */  0x36, 0x08, 0xC4, 0x11, 0xAD, 0x40, 0x34, 0x72,  // 6....@4r
                /* 09F8 */  0x7E, 0x30, 0x88, 0x80, 0x2C, 0x75, 0xCD, 0x02,  // ~0..,u..
                /* 0A00 */  0xB2, 0x70, 0x10, 0x01, 0x39, 0xBA, 0x1A, 0x20,  // .p..9.. 
                /* 0A08 */  0x26, 0xC4, 0x0D, 0x10, 0x8B, 0xA9, 0x07, 0x84,  // &.......
                /* 0A10 */  0x89, 0xF4, 0x33, 0x24, 0xFA, 0x72, 0x10, 0xA0,  // ..3$.r..
                /* 0A18 */  0x25, 0x18, 0x02, 0x62, 0x72, 0x1D, 0x01, 0x31,  // %..br..1
                /* 0A20 */  0xF1, 0x20, 0x02, 0x72, 0x6C, 0x4B, 0x40, 0x4C,  // . .rlK@L
                /* 0A28 */  0x84, 0xA6, 0xC1, 0x50, 0x53, 0x20, 0x4C, 0xA0,  // ...PS L.
                /* 0A30 */  0xAA, 0x01, 0x52, 0x57, 0x80, 0x2C, 0x3C, 0x88,  // ..RW.,<.
                /* 0A38 */  0x80, 0x2C, 0x54, 0x17, 0x10, 0x93, 0x0D, 0x22,  // .,T...."
                /* 0A40 */  0x20, 0x87, 0x7D, 0x39, 0x08, 0xC8, 0xD1, 0x41,  //  .}9...A
                /* 0A48 */  0x34, 0x50, 0xB2, 0x6A, 0x01, 0x59, 0x39, 0x88,  // 4P.j.Y9.
                /* 0A50 */  0x80, 0x9C, 0xE2, 0x9D, 0x23, 0x20, 0x67, 0x02,  // ....# g.
                /* 0A58 */  0x11, 0x90, 0xF3, 0xBF, 0x64, 0x02, 0x11, 0x31,  // ....d..1
                /* 0A60 */  0xBF, 0x9A, 0x40, 0x44, 0xD8, 0xB3, 0x26, 0x10,  // ..@D..&.
                /* 0A68 */  0x91, 0x09, 0x22, 0x20, 0x8B, 0x92, 0x07, 0xC2,  // .." ....
                /* 0A70 */  0x22, 0x81, 0xD0, 0x50, 0xF6, 0x40, 0x58, 0xFC,  // "..P.@X.
                /* 0A78 */  0x37, 0x86, 0x40, 0x2C, 0xFE, 0x6B, 0x10, 0x84,  // 7.@,.k..
                /* 0A80 */  0xFD, 0x73, 0x82, 0x90, 0x70, 0x0F, 0x06, 0x1D,  // .s..p...
                /* 0A88 */  0x02, 0xC8, 0x53, 0x27, 0x08, 0x7B, 0xC7, 0x07,  // ..S'.{..
                /* 0A90 */  0x21, 0xFF, 0x7F                                 // !..
            })
        }
    }

    Name (WSLG, Buffer (0x5F)
    {
        /* 0000 */  0x11, 0x04, 0x5B, 0x01, 0x05, 0x00, 0x01, 0x02,  // ..[.....
        /* 0008 */  0x03, 0x04, 0x03, 0x01, 0x02, 0x03, 0x00, 0x01,  // ........
        /* 0010 */  0x01, 0x01, 0x02, 0x02, 0x03, 0x03, 0x04, 0x01,  // ........
        /* 0018 */  0x01, 0x01, 0x01, 0x02, 0x02, 0x03, 0x03, 0x04,  // ........
        /* 0020 */  0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x03, 0x03,  // ........
        /* 0028 */  0x04, 0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x03,  // ........
        /* 0030 */  0x03, 0x04, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02,  // ........
        /* 0038 */  0x03, 0x03, 0x04, 0x02, 0x02, 0x02, 0x02, 0x02,  // ........
        /* 0040 */  0x02, 0x03, 0x03, 0x04, 0x03, 0x03, 0x03, 0x03,  // ........
        /* 0048 */  0x03, 0x03, 0x03, 0x03, 0x04, 0x03, 0x03, 0x03,  // ........
        /* 0050 */  0x03, 0x03, 0x03, 0x03, 0x03, 0x04, 0x04, 0x04,  // ........
        /* 0058 */  0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04         // .......
    })
    Name (WSLJ, Buffer (0x5F)
    {
        /* 0000 */  0x11, 0x04, 0x5B, 0x01, 0x05, 0x00, 0x01, 0x02,  // ..[.....
        /* 0008 */  0x03, 0x04, 0x03, 0x01, 0x02, 0x03, 0x00, 0x01,  // ........
        /* 0010 */  0x01, 0x01, 0x02, 0x02, 0x03, 0x03, 0x04, 0x01,  // ........
        /* 0018 */  0x01, 0x01, 0x01, 0x02, 0x02, 0x03, 0x03, 0x04,  // ........
        /* 0020 */  0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x03, 0x03,  // ........
        /* 0028 */  0x04, 0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x03,  // ........
        /* 0030 */  0x03, 0x04, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02,  // ........
        /* 0038 */  0x03, 0x03, 0x04, 0x02, 0x02, 0x02, 0x02, 0x02,  // ........
        /* 0040 */  0x02, 0x03, 0x03, 0x04, 0x03, 0x03, 0x03, 0x03,  // ........
        /* 0048 */  0x03, 0x03, 0x03, 0x03, 0x04, 0x03, 0x03, 0x03,  // ........
        /* 0050 */  0x03, 0x03, 0x03, 0x03, 0x03, 0x04, 0x04, 0x04,  // ........
        /* 0058 */  0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04         // .......
    })
    Name (WSLL, Buffer (0x5F)
    {
        /* 0000 */  0x11, 0x04, 0x5B, 0x01, 0x05, 0x00, 0x01, 0x02,  // ..[.....
        /* 0008 */  0x03, 0x04, 0x03, 0x01, 0x02, 0x03, 0x00, 0x01,  // ........
        /* 0010 */  0x01, 0x01, 0x02, 0x02, 0x03, 0x03, 0x04, 0x01,  // ........
        /* 0018 */  0x01, 0x01, 0x01, 0x02, 0x02, 0x03, 0x03, 0x04,  // ........
        /* 0020 */  0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x03, 0x03,  // ........
        /* 0028 */  0x04, 0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x03,  // ........
        /* 0030 */  0x03, 0x04, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02,  // ........
        /* 0038 */  0x03, 0x03, 0x04, 0x02, 0x02, 0x02, 0x02, 0x02,  // ........
        /* 0040 */  0x02, 0x03, 0x03, 0x04, 0x03, 0x03, 0x03, 0x03,  // ........
        /* 0048 */  0x03, 0x03, 0x03, 0x03, 0x04, 0x03, 0x03, 0x03,  // ........
        /* 0050 */  0x03, 0x03, 0x03, 0x03, 0x03, 0x04, 0x04, 0x04,  // ........
        /* 0058 */  0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04         // .......
    })
    Name (WSLU, Buffer (0x5F)
    {
        /* 0000 */  0x11, 0x04, 0x5B, 0x01, 0x05, 0x00, 0x01, 0x02,  // ..[.....
        /* 0008 */  0x03, 0x04, 0x03, 0x01, 0x02, 0x03, 0x00, 0x01,  // ........
        /* 0010 */  0x01, 0x01, 0x02, 0x02, 0x03, 0x03, 0x04, 0x01,  // ........
        /* 0018 */  0x01, 0x01, 0x01, 0x02, 0x02, 0x03, 0x03, 0x04,  // ........
        /* 0020 */  0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x03, 0x03,  // ........
        /* 0028 */  0x04, 0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x03,  // ........
        /* 0030 */  0x03, 0x04, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02,  // ........
        /* 0038 */  0x03, 0x03, 0x04, 0x02, 0x02, 0x02, 0x02, 0x02,  // ........
        /* 0040 */  0x02, 0x03, 0x03, 0x04, 0x03, 0x03, 0x03, 0x03,  // ........
        /* 0048 */  0x03, 0x03, 0x03, 0x03, 0x04, 0x03, 0x03, 0x03,  // ........
        /* 0050 */  0x03, 0x03, 0x03, 0x03, 0x03, 0x04, 0x04, 0x04,  // ........
        /* 0058 */  0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04         // .......
    })
    Name (WTBG, Buffer (0x2A)
    {
        /* 0000 */  0x11, 0x04, 0x13, 0x02, 0x00, 0xFF, 0x00, 0x2F,  // ......./
        /* 0008 */  0x36, 0x31, 0x3A, 0x3B, 0x3C, 0x3D, 0x3E, 0x3F,  // 61:;<=>?
        /* 0010 */  0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x05,  // @ABCDEF.
        /* 0018 */  0xFF, 0x00, 0x2F, 0x32, 0x33, 0x34, 0x34, 0x35,  // ../23445
        /* 0020 */  0x36, 0x37, 0x38, 0x39, 0x3A, 0x3B, 0x3C, 0x3D,  // 6789:;<=
        /* 0028 */  0x3E, 0x3F                                       // >?
    })
    Name (WTBJ, Buffer (0x2A)
    {
        /* 0000 */  0x11, 0x04, 0x13, 0x02, 0x00, 0xFF, 0x00, 0x2F,  // ......./
        /* 0008 */  0x36, 0x31, 0x3A, 0x3B, 0x3C, 0x3D, 0x3E, 0x3F,  // 61:;<=>?
        /* 0010 */  0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x05,  // @ABCDEF.
        /* 0018 */  0xFF, 0x00, 0x2F, 0x32, 0x33, 0x34, 0x34, 0x35,  // ../23445
        /* 0020 */  0x36, 0x37, 0x38, 0x39, 0x3A, 0x3B, 0x3C, 0x3D,  // 6789:;<=
        /* 0028 */  0x3E, 0x3F                                       // >?
    })
    Name (WTBL, Buffer (0x2A)
    {
        /* 0000 */  0x11, 0x04, 0x13, 0x02, 0x00, 0xFF, 0x00, 0x2F,  // ......./
        /* 0008 */  0x36, 0x31, 0x3A, 0x3B, 0x3C, 0x3D, 0x3E, 0x3F,  // 61:;<=>?
        /* 0010 */  0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x05,  // @ABCDEF.
        /* 0018 */  0xFF, 0x00, 0x2F, 0x32, 0x33, 0x34, 0x34, 0x35,  // ../23445
        /* 0020 */  0x36, 0x37, 0x38, 0x39, 0x3A, 0x3B, 0x3C, 0x3D,  // 6789:;<=
        /* 0028 */  0x3E, 0x3F                                       // >?
    })
    Name (WTBU, Buffer (0x2A)
    {
        /* 0000 */  0x11, 0x04, 0x13, 0x02, 0x00, 0xFF, 0x00, 0x2F,  // ......./
        /* 0008 */  0x30, 0x33, 0x34, 0x37, 0x38, 0x3B, 0x3C, 0x3F,  // 03478;<?
        /* 0010 */  0x40, 0x43, 0x44, 0x47, 0x48, 0x50, 0x51, 0x05,  // @CDGHPQ.
        /* 0018 */  0xFF, 0x00, 0x2F, 0x30, 0x33, 0x34, 0x36, 0x37,  // ../03467
        /* 0020 */  0x39, 0x3A, 0x3C, 0x3D, 0x3F, 0x40, 0x42, 0x43,  // 9:<=?@BC
        /* 0028 */  0x48, 0x49                                       // HI
    })
    Name (WD80, Buffer (0x59)
    {
        /* 0000 */  0x10, 0x04, 0x11, 0x05, 0x64, 0x4C, 0x1D, 0x00,  // ....dL..
        /* 0008 */  0x00, 0x98, 0x3A, 0x00, 0x00, 0xA8, 0x61, 0x00,  // ..:...a.
        /* 0010 */  0x00, 0xB8, 0x88, 0x00, 0x00, 0x4F, 0x4C, 0x1D,  // .....OL.
        /* 0018 */  0x00, 0x00, 0x98, 0x3A, 0x00, 0x00, 0xA8, 0x61,  // ...:...a
        /* 0020 */  0x00, 0x00, 0xB8, 0x88, 0x00, 0x00, 0x3B, 0x4C,  // ......;L
        /* 0028 */  0x1D, 0x00, 0x00, 0x98, 0x3A, 0x00, 0x00, 0xA8,  // ....:...
        /* 0030 */  0x61, 0x00, 0x00, 0x30, 0x75, 0x00, 0x00, 0x27,  // a..0u..'
        /* 0038 */  0x4C, 0x1D, 0x00, 0x00, 0x98, 0x3A, 0x00, 0x00,  // L....:..
        /* 0040 */  0xA8, 0x61, 0x00, 0x00, 0x30, 0x75, 0x00, 0x00,  // .a..0u..
        /* 0048 */  0x13, 0x4C, 0x1D, 0x00, 0x00, 0x98, 0x3A, 0x00,  // .L....:.
        /* 0050 */  0x00, 0x98, 0x3A, 0x00, 0x00, 0x20, 0x4E, 0x00,  // ..:.. N.
        /* 0058 */  0x00                                             // .
    })
    Name (WD60, Buffer (0x59)
    {
        /* 0000 */  0x10, 0x04, 0x11, 0x05, 0x64, 0x4C, 0x1D, 0x00,  // ....dL..
        /* 0008 */  0x00, 0x98, 0x3A, 0x00, 0x00, 0x20, 0x4E, 0x00,  // ..:.. N.
        /* 0010 */  0x00, 0x30, 0x75, 0x00, 0x00, 0x4F, 0x4C, 0x1D,  // .0u..OL.
        /* 0018 */  0x00, 0x00, 0x98, 0x3A, 0x00, 0x00, 0x20, 0x4E,  // ...:.. N
        /* 0020 */  0x00, 0x00, 0x30, 0x75, 0x00, 0x00, 0x3B, 0x4C,  // ..0u..;L
        /* 0028 */  0x1D, 0x00, 0x00, 0x98, 0x3A, 0x00, 0x00, 0x20,  // ....:.. 
        /* 0030 */  0x4E, 0x00, 0x00, 0xA8, 0x61, 0x00, 0x00, 0x27,  // N...a..'
        /* 0038 */  0x4C, 0x1D, 0x00, 0x00, 0x98, 0x3A, 0x00, 0x00,  // L....:..
        /* 0040 */  0x20, 0x4E, 0x00, 0x00, 0xA8, 0x61, 0x00, 0x00,  //  N...a..
        /* 0048 */  0x13, 0x4C, 0x1D, 0x00, 0x00, 0x98, 0x3A, 0x00,  // .L....:.
        /* 0050 */  0x00, 0x98, 0x3A, 0x00, 0x00, 0x20, 0x4E, 0x00,  // ..:.. N.
        /* 0058 */  0x00                                             // .
    })
    Name (WD99, Buffer (0x59)
    {
        /* 0000 */  0x10, 0x04, 0x11, 0x05, 0x64, 0x4C, 0x1D, 0x00,  // ....dL..
        /* 0008 */  0x00, 0x98, 0x3A, 0x00, 0x00, 0xA8, 0x61, 0x00,  // ..:...a.
        /* 0010 */  0x00, 0xB8, 0x88, 0x00, 0x00, 0x4F, 0x4C, 0x1D,  // .....OL.
        /* 0018 */  0x00, 0x00, 0x98, 0x3A, 0x00, 0x00, 0xA8, 0x61,  // ...:...a
        /* 0020 */  0x00, 0x00, 0xB8, 0x88, 0x00, 0x00, 0x3B, 0x4C,  // ......;L
        /* 0028 */  0x1D, 0x00, 0x00, 0x98, 0x3A, 0x00, 0x00, 0xA8,  // ....:...
        /* 0030 */  0x61, 0x00, 0x00, 0x30, 0x75, 0x00, 0x00, 0x27,  // a..0u..'
        /* 0038 */  0x4C, 0x1D, 0x00, 0x00, 0x98, 0x3A, 0x00, 0x00,  // L....:..
        /* 0040 */  0xA8, 0x61, 0x00, 0x00, 0x30, 0x75, 0x00, 0x00,  // .a..0u..
        /* 0048 */  0x13, 0x4C, 0x1D, 0x00, 0x00, 0x98, 0x3A, 0x00,  // .L....:.
        /* 0050 */  0x00, 0x98, 0x3A, 0x00, 0x00, 0x20, 0x4E, 0x00,  // ..:.. N.
        /* 0058 */  0x00                                             // .
    })
    Name (DRK0, Buffer (0xEB)
    {
        /* 0000 */  0xAB, 0x6B, 0x71, 0x89, 0x6D, 0x7B, 0xA6, 0xFC,  // .kq.m{..
        /* 0008 */  0x52, 0x44, 0xEB, 0x00, 0x00, 0x00, 0x00, 0x01,  // RD......
        /* 0010 */  0x00, 0x00, 0x00, 0x00, 0xDE, 0x10, 0x00, 0x00,  // ........
        /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
        /* 0020 */  0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x34, 0x00,  // ......4.
        /* 0028 */  0x00, 0x00, 0x01, 0x00, 0x47, 0x00, 0x00, 0x00,  // ....G...
        /* 0030 */  0x02, 0x00, 0x45, 0x00, 0x00, 0x00, 0x03, 0x00,  // ..E.....
        /* 0038 */  0x9B, 0x00, 0x00, 0x00, 0x04, 0x00, 0x99, 0x00,  // ........
        /* 0040 */  0x00, 0x00, 0x05, 0x00, 0x97, 0x00, 0x00, 0x00,  // ........
        /* 0048 */  0x06, 0x00, 0x95, 0x00, 0x00, 0x00, 0x07, 0x00,  // ........
        /* 0050 */  0x93, 0x00, 0x00, 0x00, 0x08, 0x00, 0x91, 0x00,  // ........
        /* 0058 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xD9, 0x1C,  // ........
        /* 0060 */  0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00,  // ........
        /* 0068 */  0x41, 0x5D, 0xC9, 0x00, 0x01, 0x24, 0x2E, 0x00,  // A]...$..
        /* 0070 */  0x02, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x01,  // ........
        /* 0078 */  0x00, 0x00, 0x00, 0xD9, 0x1C, 0x04, 0x00, 0x00,  // ........
        /* 0080 */  0x00, 0x02, 0x00, 0x00, 0x00, 0xE0, 0x7C, 0x97,  // ......|.
        /* 0088 */  0x01, 0xC4, 0xD5, 0xC4, 0x46, 0x00, 0x00, 0x00,  // ....F...
        /* 0090 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x3A, 0x00, 0x00,  // .....:..
        /* 0098 */  0x00, 0x32, 0x00, 0x34, 0x00, 0x30, 0x00, 0x2A,  // .2.4.0.*
        /* 00A0 */  0x00, 0x31, 0x00, 0x30, 0x00, 0x30, 0x00, 0x30,  // .1.0.0.0
        /* 00A8 */  0x00, 0x30, 0x00, 0x3B, 0x00, 0x31, 0x00, 0x34,  // .0.;.1.4
        /* 00B0 */  0x00, 0x34, 0x00, 0x2A, 0x00, 0x31, 0x00, 0x36,  // .4.*.1.6
        /* 00B8 */  0x00, 0x36, 0x00, 0x36, 0x00, 0x36, 0x00, 0x3B,  // .6.6.6.;
        /* 00C0 */  0x00, 0x36, 0x00, 0x30, 0x00, 0x2A, 0x00, 0x34,  // .6.0.*.4
        /* 00C8 */  0x00, 0x30, 0x00, 0x30, 0x00, 0x30, 0x00, 0x30,  // .0.0.0.0
        /* 00D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
        /* 00D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
        /* 00E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
        /* 00E8 */  0x00, 0x00, 0x00                                 // ...
    })
    Name (VKK0, Buffer (0xD9)
    {
        /* 0000 */  0x9A, 0x57, 0x94, 0xBB, 0xF4, 0x08, 0x66, 0xC3,  // .W....f.
        /* 0008 */  0x4B, 0x56, 0xD9, 0x00, 0x00, 0x00, 0x01, 0x00,  // KV......
        /* 0010 */  0x39, 0x35, 0x32, 0x34, 0x36, 0x38, 0x32, 0x38,  // 95246828
        /* 0018 */  0x37, 0x37, 0x31, 0x36, 0x47, 0x65, 0x6E, 0x75,  // 7716Genu
        /* 0020 */  0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,  // ine NVID
        /* 0028 */  0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,  // IA Certi
        /* 0030 */  0x66, 0x69, 0x65, 0x64, 0x20, 0x47, 0x53, 0x79,  // fied GSy
        /* 0038 */  0x6E, 0x63, 0x20, 0x52, 0x65, 0x61, 0x64, 0x79,  // nc Ready
        /* 0040 */  0x20, 0x50, 0x6C, 0x61, 0x74, 0x66, 0x6F, 0x72,  //  Platfor
        /* 0048 */  0x6D, 0x20, 0x66, 0x6F, 0x72, 0x20, 0x4B, 0x54,  // m for KT
        /* 0050 */  0x4D, 0x43, 0x4E, 0x4E, 0x52, 0x49, 0x5A, 0x4B,  // MCNNRIZK
        /* 0058 */  0x54, 0x53, 0x44, 0x42, 0x49, 0x52, 0x47, 0x4E,  // TSDBIRGN
        /* 0060 */  0x4C, 0x4C, 0x20, 0x2D, 0x20, 0x38, 0x30, 0x2E,  // LL - 80.
        /* 0068 */  0x32, 0x47, 0x56, 0x25, 0x5D, 0x3F, 0x51, 0x46,  // 2GV%]?QF
        /* 0070 */  0x42, 0x28, 0x2B, 0x41, 0x3F, 0x51, 0x5B, 0x5D,  // B(+A?Q[]
        /* 0078 */  0x2B, 0x5E, 0x27, 0x5B, 0x24, 0x47, 0x47, 0x4D,  // +^'[$GGM
        /* 0080 */  0x5D, 0x31, 0x3A, 0x39, 0x29, 0x4C, 0x2E, 0x50,  // ]1:9)L.P
        /* 0088 */  0x24, 0x23, 0x3F, 0x5C, 0x3D, 0x47, 0x2C, 0x51,  // $#?\=G,Q
        /* 0090 */  0x41, 0x20, 0x2D, 0x20, 0x43, 0x6F, 0x70, 0x79,  // A - Copy
        /* 0098 */  0x72, 0x69, 0x67, 0x68, 0x74, 0x20, 0x32, 0x30,  // right 20
        /* 00A0 */  0x32, 0x32, 0x20, 0x4E, 0x56, 0x49, 0x44, 0x49,  // 22 NVIDI
        /* 00A8 */  0x41, 0x20, 0x43, 0x6F, 0x72, 0x70, 0x6F, 0x72,  // A Corpor
        /* 00B0 */  0x61, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x41, 0x6C,  // ation Al
        /* 00B8 */  0x6C, 0x20, 0x52, 0x69, 0x67, 0x68, 0x74, 0x73,  // l Rights
        /* 00C0 */  0x20, 0x52, 0x65, 0x73, 0x65, 0x72, 0x76, 0x65,  //  Reserve
        /* 00C8 */  0x64, 0x2D, 0x35, 0x32, 0x39, 0x33, 0x31, 0x34,  // d-529314
        /* 00D0 */  0x39, 0x32, 0x31, 0x39, 0x36, 0x31, 0x28, 0x52,  // 921961(R
        /* 00D8 */  0x29                                             // )
    })
    Scope (_SB)
    {
        Device (INOU)
        {
            Name (_HID, "INOU0000")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Mutex (UWOL, 0x00)
            Name (CSTM, Zero)
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0xFED50000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Name (AX20, Buffer (0x0C)
            {
                /* 0000 */  0x50, 0x50, 0x5A, 0x62, 0x1E, 0x19, 0x57, 0x55,  // PPZb..WU
                /* 0008 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
            })
            Name (AX40, Buffer (0x0C)
            {
                /* 0000 */  0x50, 0x50, 0x5A, 0x62, 0x14, 0x19, 0x57, 0x5F,  // PPZb..W_
                /* 0008 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
            })
            Name (AX60, Buffer (0x0C)
            {
                /* 0000 */  0x50, 0x50, 0x5A, 0x62, 0x14, 0x19, 0x57, 0x5F,  // PPZb..W_
                /* 0008 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
            })
            Name (AX00, Buffer (0x0C)
            {
                /* 0000 */  0x3C, 0x41, 0x41, 0x62, 0xFF, 0xFF, 0xFF, 0xFF,  // <AAb....
                /* 0008 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0B)
            }

            Method (MMRW, 4, NotSerialized)
            {
                Acquire (UWOL, 0xFFFF)
                OperationRegion (MMNM, SystemMemory, Arg0, 0x04)
                Field (MMNM, ByteAcc, NoLock, Preserve)
                {
                    MM08,   8
                }

                Field (MMNM, ByteAcc, NoLock, Preserve)
                {
                    MM16,   16
                }

                Field (MMNM, ByteAcc, NoLock, Preserve)
                {
                    MM32,   32
                }

                Local0 = 0xFFFFFFFE
                If ((Arg1 == Zero))
                {
                    If ((Arg2 == Zero))
                    {
                        Local0 = MM08 /* \_SB_.INOU.MMRW.MM08 */
                    }
                    ElseIf ((Arg2 == One))
                    {
                        Local0 = MM16 /* \_SB_.INOU.MMRW.MM16 */
                    }
                    ElseIf ((Arg2 == 0x02))
                    {
                        Local0 = MM32 /* \_SB_.INOU.MMRW.MM32 */
                    }
                }
                ElseIf ((Arg1 == One))
                {
                    If ((Arg2 == Zero))
                    {
                        MM08 = (Arg3 & 0xFF)
                    }
                    ElseIf ((Arg2 == One))
                    {
                        MM16 = (Arg3 & 0xFFFF)
                    }
                    ElseIf ((Arg2 == 0x02))
                    {
                        MM32 = (Arg3 & 0xFFFFFFFF)
                    }
                }

                Release (UWOL)
                Return (Local0)
            }

            Method (MMRB, 1, NotSerialized)
            {
                Local1 = MMRW (Arg0, Zero, Zero, Zero)
                Return (Local1)
            }

            Method (MMRD, 1, NotSerialized)
            {
                Local1 = MMRW (Arg0, Zero, 0x02, Zero)
                Return (Local1)
            }

            Method (MMWB, 2, NotSerialized)
            {
                MMRW (Arg0, One, Zero, Arg1)
            }

            Method (MMWD, 2, NotSerialized)
            {
                MMRW (Arg0, One, 0x02, Arg1)
            }

            Method (ECRR, 1, NotSerialized)
            {
                Local0 = (0xFED50000 + Arg0)
                Local1 = MMRW (Local0, Zero, Zero, Zero)
                Return (Local1)
            }

            Method (ECRW, 2, NotSerialized)
            {
                Local0 = (0xFED50000 + Arg0)
                MMRW (Local0, One, Zero, Arg1)
            }

            Method (PCRD, 1, NotSerialized)
            {
                Local0 = (PEBS + (((Arg0 >> 0x18) & 0xFF) << 0x14
                    ))
                Local0 += (((Arg0 >> 0x10) & 0xFF) << 0x0F)
                Local0 += (((Arg0 >> 0x08) & 0xFF) << 0x0C)
                Local0 += (Arg0 & 0xFF)
                Local1 = MMRW (Local0, Zero, 0x02, Zero)
                Return (Local1)
            }

            Method (PCWD, 2, NotSerialized)
            {
                Local0 = (PEBS + (((Arg0 >> 0x18) & 0xFF) << 0x14
                    ))
                Local0 += (((Arg0 >> 0x10) & 0xFF) << 0x0F)
                Local0 += (((Arg0 >> 0x08) & 0xFF) << 0x0C)
                Local0 += (Arg0 & 0xFF)
                MMRW (Local0, One, 0x02, Arg1)
            }

            Method (IORD, 1, NotSerialized)
            {
                OperationRegion (IOSP, SystemIO, Arg0, 0x04)
                Field (IOSP, ByteAcc, NoLock, Preserve)
                {
                    IO32,   32
                }

                Local0 = IO32 /* \_SB_.INOU.IORD.IO32 */
                Return (Local0)
            }

            Method (IOWD, 2, NotSerialized)
            {
                OperationRegion (IOSW, SystemIO, Arg0, 0x04)
                Field (IOSW, ByteAcc, NoLock, Preserve)
                {
                    IW32,   32
                }

                IW32 = (Arg1 & 0xFFFFFFFF)
            }

            Method (RCMS, 2, NotSerialized)
            {
                OperationRegion (CMS2, SystemIO, 0x72, 0x02)
                Field (CMS2, ByteAcc, NoLock, Preserve)
                {
                    INDX,   8, 
                    DATA,   8
                }

                Local7 = Zero
                INDX = Arg0
                Local7 = DATA /* \_SB_.INOU.RCMS.DATA */
                Return (Local7)
            }

            Method (WCMS, 3, NotSerialized)
            {
                OperationRegion (CMS2, SystemIO, 0x72, 0x02)
                Field (CMS2, ByteAcc, NoLock, Preserve)
                {
                    INDX,   8, 
                    DATA,   8
                }

                INDX = Arg0
                DATA = Arg2
                Return (DATA) /* \_SB_.INOU.WCMS.DATA */
            }

            Method (RIOP, 2, NotSerialized)
            {
                OperationRegion (RI01, SystemIO, Arg0, 0x02)
                Field (RI01, ByteAcc, NoLock, Preserve)
                {
                    IND0,   8, 
                    DAT0,   8
                }

                IndexField (IND0, DAT0, ByteAcc, NoLock, Preserve)
                {
                }

                Local7 = Zero
                IND0 = Arg1
                Local7 = DAT0 /* \_SB_.INOU.RIOP.DAT0 */
                Return (Local7)
            }

            Method (WIOP, 3, NotSerialized)
            {
                OperationRegion (WI01, SystemIO, Arg0, 0x02)
                Field (WI01, ByteAcc, NoLock, Preserve)
                {
                    IND1,   8, 
                    DAT1,   8
                }

                IndexField (IND1, DAT1, ByteAcc, NoLock, Preserve)
                {
                }

                IND1 = Arg1
                DAT1 = Arg2
                Return (DAT1) /* \_SB_.INOU.WIOP.DAT1 */
            }

            Method (T1RD, 1, NotSerialized)
            {
            }

            Method (T2RD, 1, NotSerialized)
            {
            }

            Method (T3RD, 1, NotSerialized)
            {
            }

            Method (T1WR, 3, NotSerialized)
            {
                If ((Arg0 == 0x81))
                {
                    ^^PCI0.SBRG.EC0.APL1 = Arg1
                }
                ElseIf ((Arg0 == 0x82))
                {
                    ^^PCI0.SBRG.EC0.APL2 = Arg1
                }
                ElseIf ((Arg0 == 0x84))
                {
                    ^^PCI0.SBRG.EC0.APL4 = Arg1
                }
                ElseIf ((Arg0 == 0x85))
                {
                    ^^PCI0.SBRG.EC0.APTN = One
                    ^^PCI0.SBRG.EC0.APTC = Arg1
                }
                ElseIf ((Arg0 == 0x86)){}
                ElseIf ((Arg0 == 0x1171))
                {
                    ^^NPCF.CTGP = One
                    Local0 = Zero
                    ^^PCI0.SBRG.EC0.CTWA = Arg1
                    Local0 = (^^PCI0.SBRG.EC0.CTWA * 0x08)
                    ^^NPCF.ACBT = Local0
                    Notify (NPCF, 0xC0) // Hardware-Specific
                }
                ElseIf ((Arg0 == 0x71))
                {
                    Local0 = Zero
                    Local0 = ^^PCI0.SBRG.EC0.CTWA /* \_SB_.PCI0.SBRG.EC0_.CTWA */
                    Local0 = (Local0 * 0x08)
                    ^^NPCF.ACBT = Local0
                    Notify (NPCF, 0xC0) // Hardware-Specific
                }
                ElseIf ((Arg0 == 0x1172))
                {
                    ^^NPCF.DBAC = Arg1
                    Notify (NPCF, 0xC0) // Hardware-Specific
                }
                ElseIf ((Arg0 == 0x1173))
                {
                    ^^NPCF.DBAC = Zero
                    Local0 = Zero
                    Local1 = Zero
                    Local0 = (Arg1 * 0x08)
                    Local1 = (Arg2 * 0x08)
                    ^^PCI0.SBRG.EC0.DBD1 = Local0
                    ^^PCI0.SBRG.EC0.DBD2 = Local1
                    ^^NPCF.AMAT = Local0
                    ^^NPCF.AMIT = Local1
                    Notify (NPCF, 0xC0) // Hardware-Specific
                }
                ElseIf ((Arg0 == 0x2273))
                {
                    Local0 = Zero
                    Local0 = (Arg1 * 0x08)
                    ^^NPCF.ATPP = Local0
                    Notify (NPCF, 0xC0) // Hardware-Specific
                }
                ElseIf ((Arg0 == 0x73))
                {
                    If ((^^PCI0.SBRG.EC0.DBEN == One))
                    {
                        ^^NPCF.DBAC = Zero
                        Local0 = Zero
                        Local1 = Zero
                        Local0 = (^^PCI0.SBRG.EC0.CPUA * 0x08)
                        Local1 = (^^PCI0.SBRG.EC0.DBAP * 0x08)
                        ^^NPCF.ATPP = Local0
                        ^^NPCF.AMAT = Local1
                        Notify (NPCF, 0xC0) // Hardware-Specific
                    }
                    Else
                    {
                        ^^NPCF.DBAC = One
                        Notify (NPCF, 0xC0) // Hardware-Specific
                    }
                }
                ElseIf ((Arg0 == 0x74)){}
                ElseIf ((Arg0 == 0x1175))
                {
                    ^^NPCF.WMEN = Arg1
                    Notify (NPCF, 0xC1) // Hardware-Specific
                }
                ElseIf ((Arg0 == 0x75))
                {
                    ^^NPCF.WMEN = ^^PCI0.SBRG.EC0.WHMS /* \_SB_.PCI0.SBRG.EC0_.WHMS */
                    Notify (NPCF, 0xC1) // Hardware-Specific
                }
                ElseIf ((Arg0 == 0x1176))
                {
                    ^^PCI0.SBRG.EC0.CGCT = Arg1
                    Notify (^^PCI0.GPP0.PEGP, 0xC0) // Hardware-Specific
                }
                ElseIf ((Arg0 == 0x76))
                {
                    Notify (^^PCI0.GPP0.PEGP, 0xC0) // Hardware-Specific
                }
                ElseIf ((Arg0 == 0x61))
                {
                    M010 (Arg1, Arg2)
                }
            }

            Method (T2WR, 3, NotSerialized)
            {
            }

            Method (T3WR, 3, NotSerialized)
            {
            }

            Method (CTAF, 1, NotSerialized)
            {
                If (((^^PCI0.SBRG.EC0.TBME == One) && (^^PCI0.SBRG.EC0.UFME == Zero)))
                {
                    If ((Arg0 == One))
                    {
                        CSTM = One
                        If (((^^PCI0.SBRG.EC0.GFID == 0x11) || (^^PCI0.SBRG.EC0.GFID == 0x12)))
                        {
                            ^^NPCF.ACBT = Zero
                        }
                        ElseIf (((^^PCI0.SBRG.EC0.GFID == 0x10) || (^^PCI0.SBRG.EC0.GFID == 0x15)))
                        {
                            ^^NPCF.ACBT = 0x50
                        }

                        ^^NPCF.AMAT = Zero
                        ^^NPCF.DBAC = One
                        Notify (NPCF, 0xC0) // Hardware-Specific
                        Notify (^^PCI0.GPP0.PEGP, 0xC5) // Hardware-Specific
                    }
                    Else
                    {
                        CSTM = Zero
                        If (((^^PCI0.SBRG.EC0.GFID == 0x11) || (^^PCI0.SBRG.EC0.GFID == 0x12)))
                        {
                            ^^NPCF.ACBT = 0xA0
                        }
                        ElseIf (((^^PCI0.SBRG.EC0.GFID == 0x10) || (^^PCI0.SBRG.EC0.GFID == 0x15)))
                        {
                            ^^NPCF.ACBT = 0xF0
                        }

                        ^^NPCF.AMAT = Zero
                        ^^NPCF.DBAC = One
                        Notify (NPCF, 0xC0) // Hardware-Specific
                        Notify (^^PCI0.GPP0.PEGP, 0xC5) // Hardware-Specific
                    }
                }
            }

            Method (PWBT, 1, NotSerialized)
            {
                If (((^^PCI0.SBRG.EC0.TBME == One) && (^^PCI0.SBRG.EC0.UFME == Zero)))
                {
                    Local0 = Zero
                    Local0 = Arg0
                    ^^NPCF.DBAC = Zero
                    ^^NPCF.AMAT = Local0
                    Notify (NPCF, 0xC0) // Hardware-Specific
                }
            }

            Method (PWUP, 1, NotSerialized)
            {
                If (((^^PCI0.SBRG.EC0.GFID == 0x11) || (^^PCI0.SBRG.EC0.GFID == 0x12)))
                {
                    Local0 = Zero
                    Local0 = Arg0
                    If ((Local0 == One))
                    {
                        M010 (0x43, Zero)
                        M010 (0x1D, Zero)
                        If ((^^PCI0.SBRG.EC0.ADPT == 0x09))
                        {
                            PWBT (Zero)
                            ^^NPCF.DBAC = One
                            ^^NPCF.ACBT = 0xA0
                        }
                    }
                    ElseIf ((Local0 == 0x02))
                    {
                        M010 (0x43, Zero)
                        M010 (0x1D, Zero)
                        If ((^^PCI0.SBRG.EC0.ADPT == 0x09))
                        {
                            If ((CSTM == One))
                            {
                                ^^NPCF.ACBT = Zero
                                ^^NPCF.AMAT = Zero
                                ^^NPCF.DBAC = One
                                Notify (NPCF, 0xC0) // Hardware-Specific
                                Notify (^^PCI0.GPP0.PEGP, 0xC5) // Hardware-Specific
                            }
                            Else
                            {
                                ^^NPCF.ACBT = 0xA0
                                ^^NPCF.AMAT = Zero
                                ^^NPCF.DBAC = One
                                Notify (NPCF, 0xC0) // Hardware-Specific
                                Notify (^^PCI0.GPP0.PEGP, 0xC5) // Hardware-Specific
                            }

                            ^^NPCF.ACBT = 0xA0
                        }
                    }
                    ElseIf ((Local0 == 0x03))
                    {
                        M010 (0x43, Zero)
                        M010 (0x1D, One)
                        If ((^^PCI0.SBRG.EC0.ADPT == 0x09))
                        {
                            ^^NPCF.ACBT = 0xA0
                            ^^NPCF.AMAT = Zero
                            ^^NPCF.DBAC = One
                            Notify (NPCF, 0xC0) // Hardware-Specific
                            Notify (^^PCI0.GPP0.PEGP, 0xC5) // Hardware-Specific
                        }
                    }
                    Else
                    {
                        M010 (0x43, Zero)
                        M010 (0x1D, One)
                        If ((^^PCI0.SBRG.EC0.ADPT == 0x09))
                        {
                            PWBT (0xC8)
                            ^^NPCF.ACBT = 0xA0
                        }
                    }
                }
                ElseIf (((^^PCI0.SBRG.EC0.GFID == 0x10) || (^^PCI0.SBRG.EC0.GFID == 0x15)))
                {
                    Local0 = Zero
                    Local0 = Arg0
                    If ((Local0 == One))
                    {
                        M010 (0x43, Zero)
                        M010 (0x1D, Zero)
                        If ((^^PCI0.SBRG.EC0.ADPT == 0x09))
                        {
                            PWBT (Zero)
                            ^^NPCF.DBAC = One
                            ^^NPCF.ACBT = 0xF0
                        }
                    }
                    ElseIf ((Local0 == 0x02))
                    {
                        M010 (0x43, Zero)
                        M010 (0x1D, Zero)
                        If ((^^PCI0.SBRG.EC0.ADPT == 0x09))
                        {
                            If ((CSTM == One))
                            {
                                ^^NPCF.ACBT = 0x50
                                ^^NPCF.AMAT = Zero
                                ^^NPCF.DBAC = One
                                Notify (NPCF, 0xC0) // Hardware-Specific
                                Notify (^^PCI0.GPP0.PEGP, 0xC5) // Hardware-Specific
                            }
                            Else
                            {
                                ^^NPCF.ACBT = 0xF0
                                ^^NPCF.AMAT = Zero
                                ^^NPCF.DBAC = One
                                Notify (NPCF, 0xC0) // Hardware-Specific
                                Notify (^^PCI0.GPP0.PEGP, 0xC5) // Hardware-Specific
                            }

                            ^^NPCF.ACBT = 0xF0
                        }
                    }
                    ElseIf ((Local0 == 0x03))
                    {
                        M010 (0x43, Zero)
                        M010 (0x1D, One)
                        If ((^^PCI0.SBRG.EC0.ADPT == 0x09))
                        {
                            ^^NPCF.ACBT = 0xF0
                            ^^NPCF.AMAT = Zero
                            ^^NPCF.DBAC = One
                            Notify (NPCF, 0xC0) // Hardware-Specific
                            Notify (^^PCI0.GPP0.PEGP, 0xC5) // Hardware-Specific
                        }
                    }
                    Else
                    {
                        M010 (0x43, Zero)
                        M010 (0x1D, One)
                        If ((^^PCI0.SBRG.EC0.ADPT == 0x09))
                        {
                            PWBT (0xC8)
                            ^^NPCF.ACBT = 0xF0
                        }
                    }
                }
                ElseIf ((^^PCI0.SBRG.EC0.GFID == 0x02))
                {
                    PWBT (Zero)
                }
                ElseIf ((^^PCI0.SBRG.EC0.GFID == 0x08))
                {
                    If ((^^PCI0.SBRG.EC0.ADPT == 0x02))
                    {
                        PWBT (0x0118)
                    }
                    ElseIf ((^^PCI0.SBRG.EC0.ADPT == 0x03))
                    {
                        PWBT (0xA0)
                    }
                }
                ElseIf ((^^PCI0.SBRG.EC0.GFID == 0x0C))
                {
                    PWBT (0x0118)
                }
            }

            Method (SMRW, 1, NotSerialized)
            {
                Local0 = Zero
                Name (BUOF, Zero)
                CreateField (Arg0, Zero, 0x08, RWFG)
                CreateField (Arg0, 0x08, 0x08, REOF)
                CreateField (Arg0, 0x08, 0x60, WRBF)
                BUOF = REOF /* \_SB_.INOU.SMRW.REOF */
                If ((^^PCI0.SBRG.EC0.GFID == 0x10))
                {
                    If ((^^PCI0.SBRG.EC0.ADPT == 0x09))
                    {
                        If ((ToInteger (RWFG) == 0xAA))
                        {
                            AX20 = WRBF /* \_SB_.INOU.SMRW.WRBF */
                        }
                        ElseIf ((ToInteger (RWFG) == 0xBB))
                        {
                            CreateDWordField (AX20, BUOF, X230)
                            Local0 = X230 /* \_SB_.INOU.SMRW.X230 */
                        }
                    }
                }
                ElseIf ((^^PCI0.SBRG.EC0.GFID == 0x11))
                {
                    If ((^^PCI0.SBRG.EC0.ADPT == 0x09))
                    {
                        If ((ToInteger (RWFG) == 0xAA))
                        {
                            AX40 = WRBF /* \_SB_.INOU.SMRW.WRBF */
                        }
                        ElseIf ((ToInteger (RWFG) == 0xBB))
                        {
                            CreateDWordField (AX40, BUOF, X430)
                            Local0 = X430 /* \_SB_.INOU.SMRW.X430 */
                        }
                    }
                }
                ElseIf ((^^PCI0.SBRG.EC0.GFID == 0x12))
                {
                    If ((^^PCI0.SBRG.EC0.ADPT == 0x09))
                    {
                        If ((ToInteger (RWFG) == 0xAA))
                        {
                            AX60 = WRBF /* \_SB_.INOU.SMRW.WRBF */
                        }
                        ElseIf ((ToInteger (RWFG) == 0xBB))
                        {
                            CreateDWordField (AX60, BUOF, X630)
                            Local0 = X630 /* \_SB_.INOU.SMRW.X630 */
                        }
                    }
                }
                ElseIf ((^^PCI0.SBRG.EC0.GFID == Zero))
                {
                    If ((ToInteger (RWFG) == 0xAA))
                    {
                        AX00 = WRBF /* \_SB_.INOU.SMRW.WRBF */
                    }
                    ElseIf ((ToInteger (RWFG) == 0xBB))
                    {
                        CreateDWordField (AX00, BUOF, X000)
                        Local0 = X000 /* \_SB_.INOU.SMRW.X000 */
                    }
                }

                Return (Local0)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Name (NBRI, Zero)
        Name (NBAR, Zero)
        Name (NCMD, Zero)
        Name (PXDC, Zero)
        Name (PXLC, Zero)
        Name (PXD2, Zero)
        Name (BRI2, Zero)
        Name (BAR2, Zero)
        Name (CMD2, Zero)
        Name (XDC2, Zero)
        Name (XLC2, Zero)
        Name (XD22, Zero)
        Mutex (MGCC, 0x00)
        Method (PXCR, 3, Serialized)
        {
            M460 ("PLA-ASL-_SB.PCI0.GPPX.PXCR\n", Zero, Zero, Zero, Zero, Zero, Zero)
            Local0 = Zero
            Local1 = M017 (Arg0, Arg1, Arg2, 0x34, Zero, 0x08)
            While ((Local1 != Zero))
            {
                Local2 = M017 (Arg0, Arg1, Arg2, Local1, Zero, 0x08)
                If (((Local2 == Zero) || (Local2 == 0xFF)))
                {
                    Break
                }

                If ((Local2 == 0x10))
                {
                    Local0 = Local1
                    Break
                }

                Local1 = M017 (Arg0, Arg1, Arg2, (Local1 + One), Zero, 0x08)
            }

            Return (Local0)
        }

        Method (SPCF, 1, Serialized)
        {
            M460 ("PLA-ASL-_SB.PCI0.GPPX.SPCF\n", Zero, Zero, Zero, Zero, Zero, Zero)
            If ((Arg0 == 0x00020004))
            {
                M460 ("PLA-ASL-_SB.PCI0.GPPX.SPCF NVMe 1\n", Zero, Zero, Zero, Zero, Zero, Zero)
                Local0 = M019 (Zero, (Arg0 >> 0x10), (Arg0 & 0xFF), 
                    0x18)
                NBRI = ((Local0 & 0xFF00) >> 0x08)
                NCMD = M019 (NBRI, Zero, Zero, 0x04)
                NBAR = M019 (NBRI, Zero, Zero, 0x10)
                Local1 = PXCR (NBRI, Zero, Zero)
                PXDC = M019 (NBRI, Zero, Zero, (Local1 + 0x08))
                PXLC = M019 (NBRI, Zero, Zero, (Local1 + 0x10))
                PXD2 = M019 (NBRI, Zero, Zero, (Local1 + 0x28))
            }
            Else
            {
                M460 ("PLA-ASL-_SB.PCI0.GPPX.SPCF NVMe 2\n", Zero, Zero, Zero, Zero, Zero, Zero)
                Local0 = M019 (Zero, (Arg0 >> 0x10), (Arg0 & 0xFF), 
                    0x18)
                BRI2 = ((Local0 & 0xFF00) >> 0x08)
                CMD2 = M019 (BRI2, Zero, Zero, 0x04)
                BAR2 = M019 (BRI2, Zero, Zero, 0x10)
                Local1 = PXCR (BRI2, Zero, Zero)
                XDC2 = M019 (BRI2, Zero, Zero, (Local1 + 0x08))
                XLC2 = M019 (BRI2, Zero, Zero, (Local1 + 0x10))
                XD22 = M019 (BRI2, Zero, Zero, (Local1 + 0x28))
            }
        }

        Method (RPCF, 1, Serialized)
        {
            M460 ("PLA-ASL-_SB.PCI0.GPPX.RPCF\n", Zero, Zero, Zero, Zero, Zero, Zero)
            If ((Arg0 == 0x00020004))
            {
                M460 ("PLA-ASL-_SB.PCI0.GPPX.RPCF NVMe 1\n", Zero, Zero, Zero, Zero, Zero, Zero)
                Local1 = PXCR (NBRI, Zero, Zero)
                M020 (NBRI, Zero, Zero, (Local1 + 0x08), PXDC)
                M020 (NBRI, Zero, Zero, (Local1 + 0x10), (PXLC & 0xFFFFFEFC))
                M020 (NBRI, Zero, Zero, (Local1 + 0x28), PXD2)
                M020 (NBRI, Zero, Zero, 0x10, NBAR)
                M020 (NBRI, Zero, Zero, 0x04, 0x06)
            }
            Else
            {
                M460 ("PLA-ASL-_SB.PCI0.GPPX.RPCF NVMe 2\n", Zero, Zero, Zero, Zero, Zero, Zero)
                Local1 = PXCR (BRI2, Zero, Zero)
                M020 (BRI2, Zero, Zero, (Local1 + 0x08), XDC2)
                M020 (BRI2, Zero, Zero, (Local1 + 0x10), (XLC2 & 0xFFFFFEFC))
                M020 (BRI2, Zero, Zero, (Local1 + 0x28), XD22)
                M020 (BRI2, Zero, Zero, 0x10, BAR2)
                M020 (BRI2, Zero, Zero, 0x04, 0x06)
            }
        }

        Method (UPWD, 0, Serialized)
        {
            M460 ("PLA-ASL-_SB.PCI0.UPWD\n", Zero, Zero, Zero, Zero, Zero, Zero)
            OperationRegion (PSMI, SystemIO, 0xB2, 0x02)
            Field (PSMI, ByteAcc, NoLock, Preserve)
            {
                SMIC,   8, 
                SMID,   8
            }

            SMIC = 0xD1
            SMIC = 0xD8
        }
    }

    Scope (_SB.PCI0.GP17.XHC0)
    {
        Device (RHUB)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Device (PRT1)
            {
                Name (_ADR, One)  // _ADR: Address
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC0.RHUB.PRT1._UPC\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M600 (One, 0xFF))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC0.RHUB.PRT1._PLD\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M601 (0x02, Zero, One, 0x03, 0x0112, Zero))
                }

                Device (H0P1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC0.RHUB.PRT1.H0P1._UPC\n", Zero, Zero, Zero, Zero, Zero, Zero)
                        Return (M600 (One, 0x03))
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC0.RHUB.PRT1.H0P1._PLD\n", Zero, Zero, Zero, Zero, Zero, Zero)
                        Return (M601 (0x02, One, 0x11, 0x03, 0x0112, 0x00AF00E1))
                    }
                }

                Device (H0P2)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC0.RHUB.PRT1.H0P2._UPC\n", Zero, Zero, Zero, Zero, Zero, Zero)
                        Return (M600 (One, 0x03))
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC0.RHUB.PRT1.H0P2._PLD\n", Zero, Zero, Zero, Zero, Zero, Zero)
                        Return (M601 (0x02, One, 0x12, 0x03, 0x0112, 0x00AF00E1))
                    }
                }
            }

            Device (PRT2)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC0.RHUB.PRT2._UPC\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M600 (One, 0x03))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC0.RHUB.PRT2._PLD\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M601 (0x02, One, 0x02, 0x03, 0x0112, Zero))
                }
            }

            Device (PRT3)
            {
                Name (_ADR, 0x03)  // _ADR: Address
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC0.RHUB.PRT3._UPC\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M600 (One, 0xFF))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC0.RHUB.PRT3._PLD\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M601 (0x02, Zero, 0x03, 0x03, 0x0112, Zero))
                }
            }

            Device (PRT4)
            {
                Name (_ADR, 0x04)  // _ADR: Address
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC0.RHUB.PRT4._UPC\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M600 (One, 0xFF))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC0.RHUB.PRT4._PLD\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M601 (0x02, Zero, 0x04, 0x03, 0x0112, Zero))
                }
            }

            Device (PRT5)
            {
                Name (_ADR, 0x05)  // _ADR: Address
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC0.RHUB.PRT5._UPC\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M600 (One, 0xFF))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC0.RHUB.PRT5._PLD\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M601 (0x02, Zero, 0x05, 0x03, 0x0112, Zero))
                }

                Device (BT0)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Name (BRDY, Package (0x02)
                    {
                        Zero, 
                        Package (0x08)
                        {
                            0x12, 
                            0x80, 
                            0x80, 
                            0x80, 
                            0x80, 
                            0x80, 
                            0x80, 
                            0x80
                        }
                    })
                    Method (BRDS, 0, Serialized)
                    {
                        If ((MOID == 0x12)){}
                        ElseIf ((MOID == 0x13)){}
                        ElseIf ((MOID == 0x14)){}
                        Else
                        {
                            DerefOf (BRDY [One]) [One] = Zero
                        }

                        Return (BRDY) /* \_SB_.PCI0.GP17.XHC0.RHUB.PRT5.BT0_.BRDY */
                    }
                }
            }

            Device (PRT6)
            {
                Name (_ADR, 0x06)  // _ADR: Address
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC0.RHUB.PRT6._UPC\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M600 (One, 0xFF))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC0.RHUB.PRT6._PLD\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M601 (0x02, Zero, One, 0x03, 0x0112, Zero))
                }

                Device (H0P1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC0.RHUB.PRT6.H0P1._UPC\n", Zero, Zero, Zero, Zero, Zero, Zero)
                        Return (M600 (One, 0x03))
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC0.RHUB.PRT6.H0P1._PLD\n", Zero, Zero, Zero, Zero, Zero, Zero)
                        Return (M601 (0x02, One, 0x11, 0x03, 0x0112, 0x00AF00E1))
                    }
                }

                Device (H0P2)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC0.RHUB.PRT6.H0P2._UPC\n", Zero, Zero, Zero, Zero, Zero, Zero)
                        Return (M600 (One, 0x03))
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC0.RHUB.PRT6.H0P2._PLD\n", Zero, Zero, Zero, Zero, Zero, Zero)
                        Return (M601 (0x02, One, 0x12, 0x03, 0x0112, 0x00AF00E1))
                    }
                }
            }

            Device (PRT7)
            {
                Name (_ADR, 0x07)  // _ADR: Address
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC0.RHUB.PRT7._UPC\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M600 (Zero, 0xFF))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC0.RHUB.PRT7._PLD\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M601 (0x02, Zero, 0x07, 0x03, 0x0112, Zero))
                }
            }
        }
    }

    Scope (_SB.PCI0.GP17.XHC1)
    {
        Device (RHUB)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Device (PRT1)
            {
                Name (_ADR, One)  // _ADR: Address
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC1.RHUB.PRT1._UPC\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M600 (One, 0x03))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC1.RHUB.PRT1._PLD\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M601 (0x02, Zero, 0x0101, 0x03, 0x0112, Zero))
                }

                Device (CAM0)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC1.RHUB.PRT1.CAM0._PLD\n", Zero, Zero, Zero, Zero, Zero, Zero)
                        Return (M601 (0x04, Zero, 0x08, Zero, 0x0104, 0x00AF00E1))
                    }
                }

                Device (CAM1)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC1.RHUB.PRT1.CAM1._PLD\n", Zero, Zero, Zero, Zero, Zero, Zero)
                        Return (M601 (0x04, Zero, 0x08, Zero, 0x0104, 0x00AF00E1))
                    }
                }
            }

            Device (PRT2)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC1.RHUB.PRT2._UPC\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M600 (Zero, 0xFF))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP17.XHC1.RHUB.PRT2._PLD\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M601 (0x02, Zero, 0x0102, 0x03, 0x0112, Zero))
                }
            }
        }
    }

    Scope (_SB.PCI0.GP19.XHC3)
    {
        Device (RHUB)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Device (PRT1)
            {
                Name (_ADR, One)  // _ADR: Address
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP19.XHC3.RHUB.PRT1._UPC\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M600 (One, 0x09))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP19.XHC3.RHUB.PRT1._PLD\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M601 (0x03, One, 0x0301, 0x03, 0x0112, Zero))
                }
            }

            Device (PRT2)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP19.XHC3.RHUB.PRT2._UPC\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M600 (One, 0x09))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP19.XHC3.RHUB.PRT2._PLD\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M601 (0x03, One, 0x0301, 0x03, 0x0112, Zero))
                }
            }
        }
    }

    Scope (_SB.PCI0.GP19.XHC4)
    {
        Device (RHUB)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Device (PRT1)
            {
                Name (_ADR, One)  // _ADR: Address
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP19.XHC4.RHUB.PRT1._UPC\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M600 (One, 0x09))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP19.XHC4.RHUB.PRT1._PLD\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M601 (0x03, One, 0x0401, 0x03, 0x0112, Zero))
                }
            }

            Device (PRT2)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP19.XHC4.RHUB.PRT2._UPC\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M600 (One, 0x09))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    M460 ("PLA-ASL-\\_SB.PCI0.GP19.XHC4.RHUB.PRT2._PLD\n", Zero, Zero, Zero, Zero, Zero, Zero)
                    Return (M601 (0x03, One, 0x0401, 0x03, 0x0112, Zero))
                }
            }
        }
    }
}

