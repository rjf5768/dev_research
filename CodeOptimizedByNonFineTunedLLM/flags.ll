; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/SPASS/flags.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/SPASS/flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.FLAG_PROPERTY = type { i32, i32, i32, i8* }

@flag_CLEAN = dso_local constant i32 -5, align 4
@.str = private unnamed_addr constant [5 x i8] c"Auto\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"SOS\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Stdin\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Interactive\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Flotter\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Loops\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Splits\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Sorts\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"PSub\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Memory\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"DocSST\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"PRew\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"PCRw\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"PCon\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"PAED\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"PTaut\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"PObv\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"PSSi\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"PSST\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"DocProof\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"PMRR\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"PUnC\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"PDer\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"PGiven\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"PLabels\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"PKept\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"DocSplit\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"PProblem\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"PEmptyClause\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"PStatistic\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"FPModel\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"FPDFGProof\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"PFlags\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"POptSkolem\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"PStrSkolem\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"PBDC\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"PBInc\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"PApplyDefs\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"TimeLimit\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"IEmS\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"ISoR\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"IEqR\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"IERR\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"IEqF\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"IMPm\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"ISpR\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"IOPm\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"ISPm\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"ISpL\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"IORe\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"ISRe\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"ISHy\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"IOHy\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"IURR\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"IOFc\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"ISFc\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"IBUR\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"IDEF\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"IUnR\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"RFRew\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"RBRew\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"RFCRw\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"RBCRw\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"RUnC\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"RTer\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"RFSub\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"RBSub\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"RFMRR\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"RBMRR\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"RObv\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"RTaut\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"RSSi\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"RSST\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"RAED\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"RCon\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"RInput\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"ApplyDefs\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"FullRed\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"SatInput\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"WDRatio\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"PrefCon\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"FuncWeight\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"VarWeight\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"PrefVar\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"BoundMode\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"BoundStart\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"BoundLoops\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"Ordering\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"CNFOptSkolem\00", align 1
@.str.90 = private unnamed_addr constant [14 x i8] c"CNFProofSteps\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"CNFRenaming\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"CNFPRenaming\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"CNFStrSkolem\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"CNFFEqR\00", align 1
@.str.95 = private unnamed_addr constant [18 x i8] c"TDfg2OtterOptions\00", align 1
@flag_DEFAULTSTORE = internal global [96 x i32] zeroinitializer, align 16
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.96 = private unnamed_addr constant [27 x i8] c"list_of_settings(SPASS).{*\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"set_flag(%s,%d).\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"\0A %-30s\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c" %-30s\00", align 1
@.str.100 = private unnamed_addr constant [18 x i8] c" set_flag(%s,%d).\00", align 1
@.str.101 = private unnamed_addr constant [17 x i8] c"*}\0Aend_of_list.\0A\00", align 1
@flag_PROPERTIES = internal global [96 x %struct.FLAG_PROPERTY] zeroinitializer, align 16
@.str.102 = private unnamed_addr constant [50 x i8] c"\0A Error: Flag value %d is too small for flag %s.\0A\00", align 1
@.str.103 = private unnamed_addr constant [50 x i8] c"\0A Error: Flag value %d is too large for flag %s.\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @flag_Init() #0 {
  call void @flag_InitIntern(i32 noundef 0, i32 noundef 3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef 1, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 4, i32 noundef 3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 1, i32 noundef 3, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 2, i32 noundef 3, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 3, i32 noundef 3, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 11, i32 noundef 3, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 noundef -1, i32 noundef -2, i32 noundef 2147483647)
  call void @flag_InitIntern(i32 noundef 5, i32 noundef 3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 noundef 0, i32 noundef -2, i32 noundef 2147483647)
  call void @flag_InitIntern(i32 noundef 40, i32 noundef 3, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 3)
  call void @flag_InitIntern(i32 noundef 12, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 6, i32 noundef 3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 noundef -1, i32 noundef -2, i32 noundef 2147483647)
  call void @flag_InitIntern(i32 noundef 8, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 13, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 14, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 15, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 16, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 17, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 18, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 19, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 9, i32 noundef 3, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 20, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 21, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 23, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 24, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i32 noundef 1, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 25, i32 noundef 1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 26, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 10, i32 noundef 1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 27, i32 noundef 1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i32 noundef 1, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 28, i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 29, i32 noundef 1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 30, i32 noundef 1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 3)
  call void @flag_InitIntern(i32 noundef 31, i32 noundef 1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 32, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 33, i32 noundef 1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 34, i32 noundef 1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 35, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 36, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 37, i32 noundef 1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 7, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0), i32 noundef -1, i32 noundef -2, i32 noundef 2147483647)
  call void @flag_InitIntern(i32 noundef 38, i32 noundef 3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i32 noundef 1, i32 noundef -1, i32 noundef 3)
  call void @flag_InitIntern(i32 noundef 59, i32 noundef 0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 60, i32 noundef 0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 61, i32 noundef 0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 62, i32 noundef 0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 63, i32 noundef 0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 64, i32 noundef 0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 65, i32 noundef 0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 66, i32 noundef 0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 67, i32 noundef 0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 68, i32 noundef 0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 69, i32 noundef 0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 3)
  call void @flag_InitIntern(i32 noundef 70, i32 noundef 0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 3)
  call void @flag_InitIntern(i32 noundef 71, i32 noundef 0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 72, i32 noundef 0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 73, i32 noundef 0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 74, i32 noundef 0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 3)
  call void @flag_InitIntern(i32 noundef 75, i32 noundef 0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 77, i32 noundef 0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 78, i32 noundef 0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 76, i32 noundef 0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 79, i32 noundef 2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 80, i32 noundef 2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 81, i32 noundef 2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 82, i32 noundef 2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 86, i32 noundef 2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 87, i32 noundef 2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2147483647)
  call void @flag_InitIntern(i32 noundef 91, i32 noundef 2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 92, i32 noundef 2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 83, i32 noundef 2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 84, i32 noundef 2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 85, i32 noundef 2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 88, i32 noundef 2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 3)
  call void @flag_InitIntern(i32 noundef 90, i32 noundef 2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 89, i32 noundef 2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 93, i32 noundef 2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 3)
  call void @flag_InitIntern(i32 noundef 94, i32 noundef 2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 39, i32 noundef 3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i32 noundef 1, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 51, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2147483647)
  call void @flag_InitIntern(i32 noundef 44, i32 noundef 3, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i64 0, i64 0), i32 noundef 1, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 41, i32 noundef 3, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 42, i32 noundef 3, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0), i32 noundef 5, i32 noundef 0, i32 noundef 2147483647)
  call void @flag_InitIntern(i32 noundef 43, i32 noundef 3, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 2147483647)
  call void @flag_InitIntern(i32 noundef 45, i32 noundef 3, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 2147483647)
  call void @flag_InitIntern(i32 noundef 46, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 2147483647)
  call void @flag_InitIntern(i32 noundef 47, i32 noundef 3, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 48, i32 noundef 3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 3)
  call void @flag_InitIntern(i32 noundef 49, i32 noundef 3, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i64 0, i64 0), i32 noundef -1, i32 noundef -2, i32 noundef 2147483647)
  call void @flag_InitIntern(i32 noundef 50, i32 noundef 3, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i64 0, i64 0), i32 noundef 1, i32 noundef 0, i32 noundef 2147483647)
  call void @flag_InitIntern(i32 noundef 52, i32 noundef 3, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 53, i32 noundef 3, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i64 0, i64 0), i32 noundef 1, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 55, i32 noundef 3, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.90, i64 0, i64 0), i32 noundef 100, i32 noundef 0, i32 noundef 2147483647)
  call void @flag_InitIntern(i32 noundef 56, i32 noundef 3, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i64 0, i64 0), i32 noundef 1, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 57, i32 noundef 3, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 54, i32 noundef 3, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.93, i64 0, i64 0), i32 noundef 1, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 58, i32 noundef 3, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.94, i64 0, i64 0), i32 noundef 1, i32 noundef -1, i32 noundef 2)
  call void @flag_InitIntern(i32 noundef 95, i32 noundef 3, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.95, i64 0, i64 0), i32 noundef 0, i32 noundef -1, i32 noundef 4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @flag_InitIntern(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.FLAG_PROPERTY*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  call void @flag_CheckFlagIdInRange(i32 noundef %14)
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [96 x %struct.FLAG_PROPERTY], [96 x %struct.FLAG_PROPERTY]* @flag_PROPERTIES, i64 0, i64 %16
  store %struct.FLAG_PROPERTY* %17, %struct.FLAG_PROPERTY** %13, align 8
  %18 = load i32, i32* %8, align 4
  call void @flag_CheckFlagTypeInRange(i32 noundef %18)
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.FLAG_PROPERTY*, %struct.FLAG_PROPERTY** %13, align 8
  %21 = getelementptr inbounds %struct.FLAG_PROPERTY, %struct.FLAG_PROPERTY* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load %struct.FLAG_PROPERTY*, %struct.FLAG_PROPERTY** %13, align 8
  %24 = getelementptr inbounds %struct.FLAG_PROPERTY, %struct.FLAG_PROPERTY* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.FLAG_PROPERTY*, %struct.FLAG_PROPERTY** %13, align 8
  %27 = getelementptr inbounds %struct.FLAG_PROPERTY, %struct.FLAG_PROPERTY* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.FLAG_PROPERTY*, %struct.FLAG_PROPERTY** %13, align 8
  %30 = getelementptr inbounds %struct.FLAG_PROPERTY, %struct.FLAG_PROPERTY* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [96 x i32], [96 x i32]* @flag_DEFAULTSTORE, i64 0, i64 %33
  store i32 %31, i32* %34, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32* @flag_DefaultStore() #0 {
  ret i32* getelementptr inbounds ([96 x i32], [96 x i32]* @flag_DEFAULTSTORE, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @flag_Print(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %4 = load i32*, i32** %2, align 8
  call void @flag_FPrint(%struct._IO_FILE* noundef %3, i32* noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @flag_FPrint(%struct._IO_FILE* noundef %0, i32* noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [30 x i8], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %8 = call i32 @fputs(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.96, i64 0, i64 0), %struct._IO_FILE* noundef %7)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %57, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ult i32 %10, 96
  br i1 %11, label %12, label %60

12:                                               ; preds = %9
  %13 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %14 = load i32, i32* %5, align 4
  %15 = call i8* @flag_Name(i32 noundef %14)
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @flag_GetFlagValue(i32* noundef %16, i32 noundef %17)
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %13, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.97, i64 0, i64 0), i8* noundef %15, i32 noundef %18) #5
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %21 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i64 0, i64 0), i8* noundef %21)
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, 1
  %25 = icmp ult i32 %24, 96
  br i1 %25, label %26, label %56

26:                                               ; preds = %12
  %27 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %28 = load i32, i32* %5, align 4
  %29 = add i32 %28, 1
  %30 = call i8* @flag_Name(i32 noundef %29)
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = add i32 %32, 1
  %34 = call i32 @flag_GetFlagValue(i32* noundef %31, i32 noundef %33)
  %35 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %27, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.97, i64 0, i64 0), i8* noundef %30, i32 noundef %34) #5
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %37 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i64 0, i64 0), i8* noundef %37)
  %39 = load i32, i32* %5, align 4
  %40 = add i32 %39, 2
  %41 = icmp ult i32 %40, 96
  br i1 %41, label %42, label %55

42:                                               ; preds = %26
  %43 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 2
  %46 = call i8* @flag_Name(i32 noundef %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = add i32 %48, 2
  %50 = call i32 @flag_GetFlagValue(i32* noundef %47, i32 noundef %49)
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %43, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.100, i64 0, i64 0), i8* noundef %46, i32 noundef %50) #5
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %53 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %52, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i64 0, i64 0), i8* noundef %53)
  br label %55

55:                                               ; preds = %42, %26
  br label %56

56:                                               ; preds = %55, %12
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add i32 %58, 3
  store i32 %59, i32* %5, align 4
  br label %9, !llvm.loop !4

60:                                               ; preds = %9
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %62 = call i32 @fputs(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.101, i64 0, i64 0), %struct._IO_FILE* noundef %61)
  ret void
}

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @flag_Name(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @flag_CheckFlagIdInRange(i32 noundef %3)
  %4 = load i32, i32* %2, align 4
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [96 x %struct.FLAG_PROPERTY], [96 x %struct.FLAG_PROPERTY]* @flag_PROPERTIES, i64 0, i64 %5
  %7 = getelementptr inbounds %struct.FLAG_PROPERTY, %struct.FLAG_PROPERTY* %6, i32 0, i32 3
  %8 = load i8*, i8** %7, align 8
  ret i8* %8
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @flag_GetFlagValue(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  call void @flag_CheckFlagIdInRange(i32 noundef %6)
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  ret i32 %12
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @flag_Lookup(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @flag_Id(i8* noundef %3)
  %5 = icmp ne i32 %4, -1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @flag_Id(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %17, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp ult i32 %6, 96
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = call i8* @flag_Name(i32 noundef %9)
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @string_Equal(i8* noundef %10, i8* noundef %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %21

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %4, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %5, !llvm.loop !6

20:                                               ; preds = %5
  store i32 -1, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %14
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @string_Equal(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #6
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define internal void @flag_CheckFlagIdInRange(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @flag_Minimum(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @flag_CheckFlagIdInRange(i32 noundef %3)
  %4 = load i32, i32* %2, align 4
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [96 x %struct.FLAG_PROPERTY], [96 x %struct.FLAG_PROPERTY]* @flag_PROPERTIES, i64 0, i64 %5
  %7 = getelementptr inbounds %struct.FLAG_PROPERTY, %struct.FLAG_PROPERTY* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @flag_Maximum(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @flag_CheckFlagIdInRange(i32 noundef %3)
  %4 = load i32, i32* %2, align 4
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [96 x %struct.FLAG_PROPERTY], [96 x %struct.FLAG_PROPERTY]* @flag_PROPERTIES, i64 0, i64 %5
  %7 = getelementptr inbounds %struct.FLAG_PROPERTY, %struct.FLAG_PROPERTY* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @flag_Type(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @flag_CheckFlagIdInRange(i32 noundef %3)
  %4 = load i32, i32* %2, align 4
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [96 x %struct.FLAG_PROPERTY], [96 x %struct.FLAG_PROPERTY]* @flag_PROPERTIES, i64 0, i64 %5
  %7 = getelementptr inbounds %struct.FLAG_PROPERTY, %struct.FLAG_PROPERTY* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @flag_ClearInferenceRules(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %15, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 96
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @flag_IsInference(i32 noundef %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* %3, align 4
  call void @flag_SetFlagValue(i32* noundef %12, i32 noundef %13, i32 noundef 0)
  br label %14

14:                                               ; preds = %11, %7
  br label %15

15:                                               ; preds = %14
  %16 = load i32, i32* %3, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %4, !llvm.loop !7

18:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @flag_IsInference(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @flag_CheckFlagIdInRange(i32 noundef %3)
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @flag_IsOfType(i32 noundef %4, i32 noundef 0)
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal void @flag_SetFlagValue(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  call void @flag_CheckFlagIdInRange(i32 noundef %7)
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  call void @flag_CheckFlagValueInRange(i32 noundef %8, i32 noundef %9)
  %10 = load i32, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  store i32 %10, i32* %14, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @flag_ClearReductionRules(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %15, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 96
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @flag_IsReduction(i32 noundef %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* %3, align 4
  call void @flag_SetFlagValue(i32* noundef %12, i32 noundef %13, i32 noundef 0)
  br label %14

14:                                               ; preds = %11, %7
  br label %15

15:                                               ; preds = %14
  %16 = load i32, i32* %3, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %4, !llvm.loop !8

18:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @flag_IsReduction(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @flag_CheckFlagIdInRange(i32 noundef %3)
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @flag_IsOfType(i32 noundef %4, i32 noundef 2)
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @flag_ClearPrinting(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %15, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 96
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @flag_IsPrinting(i32 noundef %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* %3, align 4
  call void @flag_SetFlagValue(i32* noundef %12, i32 noundef %13, i32 noundef 0)
  br label %14

14:                                               ; preds = %11, %7
  br label %15

15:                                               ; preds = %14
  %16 = load i32, i32* %3, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %4, !llvm.loop !9

18:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @flag_IsPrinting(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @flag_CheckFlagIdInRange(i32 noundef %3)
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @flag_IsOfType(i32 noundef %4, i32 noundef 1)
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @flag_SetReductionsToDefaults(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %15, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 96
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @flag_IsReduction(i32 noundef %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* %3, align 4
  call void @flag_SetFlagToDefault(i32* noundef %12, i32 noundef %13)
  br label %14

14:                                               ; preds = %11, %7
  br label %15

15:                                               ; preds = %14
  %16 = load i32, i32* %3, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %4, !llvm.loop !10

18:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @flag_SetFlagToDefault(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32* @flag_DefaultStore()
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @flag_GetFlagValue(i32* noundef %7, i32 noundef %8)
  call void @flag_SetFlagValue(i32* noundef %5, i32 noundef %6, i32 noundef %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @flag_InitFlotterSubproofFlags(i32* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  call void @flag_ClearPrinting(i32* noundef %5)
  %6 = load i32*, i32** %4, align 8
  call void @flag_ClearInferenceRules(i32* noundef %6)
  %7 = load i32*, i32** %4, align 8
  call void @flag_SetReductionsToDefaults(i32* noundef %7)
  %8 = load i32*, i32** %4, align 8
  call void @flag_SetFlagToDefault(i32* noundef %8, i32 noundef 58)
  %9 = load i32*, i32** %4, align 8
  call void @flag_SetFlagToDefault(i32* noundef %9, i32 noundef 39)
  %10 = load i32*, i32** %3, align 8
  %11 = load i32*, i32** %4, align 8
  call void @flag_TransferFlag(i32* noundef %10, i32* noundef %11, i32 noundef 9)
  %12 = load i32*, i32** %3, align 8
  %13 = load i32*, i32** %4, align 8
  call void @flag_TransferFlag(i32* noundef %12, i32* noundef %13, i32 noundef 55)
  %14 = load i32*, i32** %4, align 8
  call void @flag_SetFlagValue(i32* noundef %14, i32 noundef 77, i32 noundef 1)
  %15 = load i32*, i32** %4, align 8
  call void @flag_SetFlagValue(i32* noundef %15, i32 noundef 52, i32 noundef 0)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** %4, align 8
  call void @flag_TransferFlag(i32* noundef %16, i32* noundef %17, i32 noundef 45)
  %18 = load i32*, i32** %3, align 8
  %19 = load i32*, i32** %4, align 8
  call void @flag_TransferFlag(i32* noundef %18, i32* noundef %19, i32 noundef 46)
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %4, align 8
  call void @flag_TransferFlag(i32* noundef %20, i32* noundef %21, i32 noundef 38)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @flag_TransferFlag(i32* noundef %0, i32* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @flag_GetFlagValue(i32* noundef %9, i32 noundef %10)
  call void @flag_SetFlagValue(i32* noundef %7, i32 noundef %8, i32 noundef %11)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @flag_InitFlotterFlags(i32* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32*, i32** %4, align 8
  call void @flag_InitFlotterSubproofFlags(i32* noundef %5, i32* noundef %6)
  %7 = load i32*, i32** %4, align 8
  call void @flag_SetFlagToDefault(i32* noundef %7, i32 noundef 52)
  %8 = load i32*, i32** %4, align 8
  call void @flag_SetFlagToDefault(i32* noundef %8, i32 noundef 45)
  %9 = load i32*, i32** %4, align 8
  call void @flag_SetFlagToDefault(i32* noundef %9, i32 noundef 46)
  %10 = load i32*, i32** %3, align 8
  %11 = load i32*, i32** %4, align 8
  call void @flag_TransferFlag(i32* noundef %10, i32* noundef %11, i32 noundef 56)
  %12 = load i32*, i32** %3, align 8
  %13 = load i32*, i32** %4, align 8
  call void @flag_TransferFlag(i32* noundef %12, i32* noundef %13, i32 noundef 53)
  %14 = load i32*, i32** %3, align 8
  %15 = load i32*, i32** %4, align 8
  call void @flag_TransferFlag(i32* noundef %14, i32* noundef %15, i32 noundef 54)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** %4, align 8
  call void @flag_TransferFlag(i32* noundef %16, i32* noundef %17, i32 noundef 37)
  %18 = load i32*, i32** %3, align 8
  %19 = load i32*, i32** %4, align 8
  call void @flag_TransferFlag(i32* noundef %18, i32* noundef %19, i32 noundef 35)
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %4, align 8
  call void @flag_TransferFlag(i32* noundef %20, i32* noundef %21, i32 noundef 36)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** %4, align 8
  call void @flag_TransferFlag(i32* noundef %22, i32* noundef %23, i32 noundef 57)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32*, i32** %4, align 8
  call void @flag_TransferFlag(i32* noundef %24, i32* noundef %25, i32 noundef 33)
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %4, align 8
  call void @flag_TransferFlag(i32* noundef %26, i32* noundef %27, i32 noundef 34)
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** %4, align 8
  call void @flag_TransferFlag(i32* noundef %28, i32* noundef %29, i32 noundef 2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @flag_CheckStore(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp ult i32 %6, 96
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, -5
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  call void @flag_CheckFlagValueInRange(i32 noundef %17, i32 noundef %18)
  br label %19

19:                                               ; preds = %16, %8
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %3, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %5, !llvm.loop !11

23:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @flag_CheckFlagValueInRange(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  call void @flag_CheckFlagIdInRange(i32 noundef %5)
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @flag_Minimum(i32 noundef %7)
  %9 = icmp sle i32 %6, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i8* @flag_Name(i32 noundef %14)
  call void (i8*, ...) @misc_UserErrorReport(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.102, i64 0, i64 0), i32 noundef %13, i8* noundef %15)
  call void @misc_Error()
  br label %28

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @flag_Maximum(i32 noundef %18)
  %20 = icmp sge i32 %17, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = call i32 @fflush(%struct._IO_FILE* noundef %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i8* @flag_Name(i32 noundef %25)
  call void (i8*, ...) @misc_UserErrorReport(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.103, i64 0, i64 0), i32 noundef %24, i8* noundef %26)
  call void @misc_Error()
  br label %27

27:                                               ; preds = %21, %16
  br label %28

28:                                               ; preds = %27, %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @flag_CheckFlagTypeInRange(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @flag_IsOfType(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  call void @flag_CheckFlagIdInRange(i32 noundef %5)
  %6 = load i32, i32* %4, align 4
  call void @flag_CheckFlagTypeInRange(i32 noundef %6)
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @flag_Type(i32 noundef %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  ret i32 %11
}

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local void @misc_UserErrorReport(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @misc_Error() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i32 @fflush(%struct._IO_FILE* noundef %1)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %4 = call i32 @fflush(%struct._IO_FILE* noundef %3)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 @fflush(%struct._IO_FILE* noundef %5)
  call void @exit(i32 noundef 1) #7
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
