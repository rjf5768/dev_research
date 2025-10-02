; ModuleID = './luac.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/lua/luac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.Smain = type { i32, i8** }
%struct.lua_State = type { %union.GCObject*, i8, i8, i8, %struct.lua_TValue*, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, i32, i32, i16, i16, i8, i8, i32, i32, void (%struct.lua_State*, %struct.lua_Debug*)*, %struct.lua_TValue, %struct.lua_TValue, %union.GCObject*, %union.GCObject*, %struct.lua_longjmp*, i64 }
%struct.global_State = type { %struct.stringtable, i8* (i8*, i8*, i64, i64)*, i8*, i8, i8, i32, %union.GCObject*, %union.GCObject**, %union.GCObject*, %union.GCObject*, %union.GCObject*, %union.GCObject*, %struct.Mbuffer, i64, i64, i64, i64, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_TValue, %struct.lua_State*, %struct.UpVal, [9 x %struct.Table*], [17 x %union.TString*] }
%struct.stringtable = type { %union.GCObject**, i32, i32 }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.UpVal = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, %union.anon }
%union.anon = type { %struct.lua_TValue }
%struct.Table = type { %union.GCObject*, i8, i8, i8, i8, %struct.Table*, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %union.GCObject*, i32 }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.0 }
%struct.anon.0 = type { %union.Value, i32, %struct.Node* }
%union.Value = type { %union.GCObject* }
%union.TString = type { %struct.anon.1 }
%struct.anon.1 = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.GCObject = type { %struct.lua_State }
%struct.lua_longjmp = type opaque
%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.LocVar = type { %union.TString*, i32, i32 }
%struct.LClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, %struct.Proto*, [1 x %struct.UpVal*] }

@.str = private unnamed_addr constant [21 x i8] c"no input files given\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"not enough memory for state\00", align 1
@progname = internal global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@listing = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@output = internal global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @Output, i32 0, i32 0), align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"'-o' needs argument\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@dumping = internal global i32 1, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@stripping = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@Output = internal global [9 x i8] c"luac.out\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"%s  %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Lua 5.1.4\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Copyright (C) 1994-2008 Lua.org, PUC-Rio\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"luac\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.14 = private unnamed_addr constant [30 x i8] c"%s: unrecognized option '%s'\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [275 x i8] c"usage: %s [options] [filenames].\0AAvailable options are:\0A  -        process stdin\0A  -l       list\0A  -o name  output to file 'name' (default is \22%s\22)\0A  -p       parse only\0A  -s       strip debug information\0A  -v       show version information\0A  --       stop handling options\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"too many input files\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"=(luac)\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"%s: cannot %s %s: %s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca %struct.Smain, align 8
  %4 = call i32 @doargs(i32 noundef %0, i8** noundef %1)
  %5 = sub nsw i32 %0, %4
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds i8*, i8** %1, i64 %6
  %8 = icmp slt i32 %5, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @usage(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %9, %2
  %11 = call %struct.lua_State* @luaL_newstate() #7
  %12 = icmp eq %struct.lua_State* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  call void @fatal(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %13, %10
  %15 = getelementptr inbounds %struct.Smain, %struct.Smain* %3, i64 0, i32 0
  store i32 %5, i32* %15, align 8
  %16 = getelementptr inbounds %struct.Smain, %struct.Smain* %3, i64 0, i32 1
  store i8** %7, i8*** %16, align 8
  %17 = bitcast %struct.Smain* %3 to i8*
  %18 = call i32 @lua_cpcall(%struct.lua_State* noundef %11, i32 (%struct.lua_State*)* noundef nonnull @pmain, i8* noundef nonnull %17) #7
  %.not = icmp eq i32 %18, 0
  br i1 %.not, label %21, label %19

19:                                               ; preds = %14
  %20 = call i8* @lua_tolstring(%struct.lua_State* noundef %11, i32 noundef -1, i64* noundef null) #7
  call void @fatal(i8* noundef %20)
  br label %21

21:                                               ; preds = %19, %14
  call void @lua_close(%struct.lua_State* noundef %11) #7
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @doargs(i32 noundef %0, i8** nocapture noundef %1) #0 {
  %3 = load i8*, i8** %1, align 8
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %9, label %4

4:                                                ; preds = %2
  %5 = load i8*, i8** %1, align 8
  %6 = load i8, i8* %5, align 1
  %.not17 = icmp eq i8 %6, 0
  br i1 %.not17, label %9, label %7

7:                                                ; preds = %4
  %8 = load i8*, i8** %1, align 8
  store i8* %8, i8** @progname, align 8
  br label %9

9:                                                ; preds = %7, %4, %2
  br label %10

10:                                               ; preds = %104, %9
  %.01 = phi i32 [ 1, %9 ], [ %105, %104 ]
  %.0 = phi i32 [ 0, %9 ], [ %.6, %104 ]
  %11 = icmp slt i32 %.01, %0
  br i1 %11, label %12, label %.loopexit

12:                                               ; preds = %10
  %13 = sext i32 %.01 to i64
  %14 = getelementptr inbounds i8*, i8** %1, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %.not15 = icmp eq i8 %16, 45
  br i1 %.not15, label %18, label %17

17:                                               ; preds = %12
  br label %106

18:                                               ; preds = %12
  %19 = sext i32 %.01 to i64
  %20 = getelementptr inbounds i8*, i8** %1, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %21, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = add nsw i32 %.01, 1
  %.not16 = icmp eq i32 %.0, 0
  br i1 %.not16, label %28, label %26

26:                                               ; preds = %24
  %27 = add nsw i32 %.0, 1
  br label %28

28:                                               ; preds = %26, %24
  %.1 = phi i32 [ %27, %26 ], [ %.0, %24 ]
  br label %106

29:                                               ; preds = %18
  %30 = sext i32 %.01 to i64
  %31 = getelementptr inbounds i8*, i8** %1, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %32, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %106

36:                                               ; preds = %29
  %37 = sext i32 %.01 to i64
  %38 = getelementptr inbounds i8*, i8** %1, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %39, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @listing, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @listing, align 4
  br label %100

45:                                               ; preds = %36
  %46 = sext i32 %.01 to i64
  %47 = getelementptr inbounds i8*, i8** %1, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %48, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %45
  %52 = add nsw i32 %.01, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %1, i64 %53
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** @output, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = load i8*, i8** @output, align 8
  %59 = load i8, i8* %58, align 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %51
  call void @usage(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %62

62:                                               ; preds = %61, %57
  %63 = sext i32 %52 to i64
  %64 = getelementptr inbounds i8*, i8** %1, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %65, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i8* null, i8** @output, align 8
  br label %69

69:                                               ; preds = %68, %62
  br label %99

70:                                               ; preds = %45
  %71 = sext i32 %.01 to i64
  %72 = getelementptr inbounds i8*, i8** %1, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %73, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 0, i32* @dumping, align 4
  br label %98

77:                                               ; preds = %70
  %78 = sext i32 %.01 to i64
  %79 = getelementptr inbounds i8*, i8** %1, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %80, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 1, i32* @stripping, align 4
  br label %97

84:                                               ; preds = %77
  %85 = sext i32 %.01 to i64
  %86 = getelementptr inbounds i8*, i8** %1, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %87, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = add nsw i32 %.0, 1
  br label %96

92:                                               ; preds = %84
  %93 = sext i32 %.01 to i64
  %94 = getelementptr inbounds i8*, i8** %1, i64 %93
  %95 = load i8*, i8** %94, align 8
  call void @usage(i8* noundef %95)
  br label %96

96:                                               ; preds = %92, %90
  %.2 = phi i32 [ %91, %90 ], [ %.0, %92 ]
  br label %97

97:                                               ; preds = %96, %83
  %.3 = phi i32 [ %.0, %83 ], [ %.2, %96 ]
  br label %98

98:                                               ; preds = %97, %76
  %.4 = phi i32 [ %.0, %76 ], [ %.3, %97 ]
  br label %99

99:                                               ; preds = %98, %69
  %.12 = phi i32 [ %52, %69 ], [ %.01, %98 ]
  %.5 = phi i32 [ %.0, %69 ], [ %.4, %98 ]
  br label %100

100:                                              ; preds = %99, %42
  %.23 = phi i32 [ %.01, %42 ], [ %.12, %99 ]
  %.6 = phi i32 [ %.0, %42 ], [ %.5, %99 ]
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103
  %105 = add nsw i32 %.23, 1
  br label %10, !llvm.loop !4

.loopexit:                                        ; preds = %10
  br label %106

106:                                              ; preds = %.loopexit, %35, %28, %17
  %.34 = phi i32 [ %.01, %17 ], [ %25, %28 ], [ %.01, %35 ], [ %.01, %.loopexit ]
  %.7 = phi i32 [ %.0, %17 ], [ %.1, %28 ], [ %.0, %35 ], [ %.0, %.loopexit ]
  %107 = icmp eq i32 %.34, %0
  br i1 %107, label %108, label %116

108:                                              ; preds = %106
  %109 = load i32, i32* @listing, align 4
  %.not13 = icmp eq i32 %109, 0
  br i1 %.not13, label %110, label %112

110:                                              ; preds = %108
  %111 = load i32, i32* @dumping, align 4
  %.not14 = icmp eq i32 %111, 0
  br i1 %.not14, label %112, label %116

112:                                              ; preds = %110, %108
  store i32 0, i32* @dumping, align 4
  %113 = add nsw i32 %.34, -1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %1, i64 %114
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @Output, i64 0, i64 0), i8** %115, align 8
  br label %116

116:                                              ; preds = %112, %110, %106
  %.45 = phi i32 [ %113, %112 ], [ %.34, %110 ], [ %.34, %106 ]
  %.not12 = icmp eq i32 %.7, 0
  br i1 %.not12, label %123, label %117

117:                                              ; preds = %116
  %118 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0)) #7
  %119 = add nsw i32 %0, -1
  %120 = icmp eq i32 %.7, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  call void @exit(i32 noundef 0) #9
  unreachable

122:                                              ; preds = %117
  br label %123

123:                                              ; preds = %122, %116
  ret i32 %.45
}

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @usage(i8* noundef %0) #1 {
  %2 = load i8, i8* %0, align 1
  %3 = icmp eq i8 %2, 45
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** @progname, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i8* noundef %6, i8* noundef nonnull %0) #10
  br label %12

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load i8*, i8** @progname, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* noundef %10, i8* noundef nonnull %0) #10
  br label %12

12:                                               ; preds = %8, %4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i8*, i8** @progname, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([275 x i8], [275 x i8]* @.str.16, i64 0, i64 0), i8* noundef %14, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @Output, i64 0, i64 0)) #10
  call void @exit(i32 noundef 1) #9
  unreachable
}

declare dso_local %struct.lua_State* @luaL_newstate() #2

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @fatal(i8* noundef %0) #1 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** @progname, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* noundef %3, i8* noundef %0) #10
  call void @exit(i32 noundef 1) #9
  unreachable
}

declare dso_local i32 @lua_cpcall(%struct.lua_State* noundef, i32 (%struct.lua_State*)* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @pmain(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @lua_touserdata(%struct.lua_State* noundef %0, i32 noundef 1) #7
  %3 = bitcast i8* %2 to i32*
  %4 = load i32, i32* %3, align 8
  %5 = getelementptr inbounds i8, i8* %2, i64 8
  %6 = bitcast i8* %5 to i8***
  %7 = load i8**, i8*** %6, align 8
  %8 = call i32 @lua_checkstack(%struct.lua_State* noundef %0, i32 noundef %4) #7
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %9, label %10

9:                                                ; preds = %1
  call void @fatal(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  br label %10

10:                                               ; preds = %9, %1
  br label %11

11:                                               ; preds = %30, %10
  %.0 = phi i32 [ 0, %10 ], [ %31, %30 ]
  %12 = icmp slt i32 %.0, %4
  br i1 %12, label %13, label %32

13:                                               ; preds = %11
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds i8*, i8** %7, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %16, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %24

20:                                               ; preds = %13
  %21 = zext i32 %.0 to i64
  %22 = getelementptr inbounds i8*, i8** %7, i64 %21
  %23 = load i8*, i8** %22, align 8
  br label %24

24:                                               ; preds = %20, %19
  %25 = phi i8* [ null, %19 ], [ %23, %20 ]
  %26 = call i32 @luaL_loadfile(%struct.lua_State* noundef %0, i8* noundef %25) #7
  %.not5 = icmp eq i32 %26, 0
  br i1 %.not5, label %29, label %27

27:                                               ; preds = %24
  %28 = call i8* @lua_tolstring(%struct.lua_State* noundef %0, i32 noundef -1, i64* noundef null) #7
  call void @fatal(i8* noundef %28)
  br label %29

29:                                               ; preds = %27, %24
  br label %30

30:                                               ; preds = %29
  %31 = add nuw nsw i32 %.0, 1
  br label %11, !llvm.loop !6

32:                                               ; preds = %11
  %33 = call %struct.Proto* @combine(%struct.lua_State* noundef %0, i32 noundef %4)
  %34 = load i32, i32* @listing, align 4
  %.not1 = icmp eq i32 %34, 0
  br i1 %.not1, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @listing, align 4
  %37 = icmp sgt i32 %36, 1
  %38 = zext i1 %37 to i32
  call void @luaU_print(%struct.Proto* noundef %33, i32 noundef %38) #7
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i32, i32* @dumping, align 4
  %.not2 = icmp eq i32 %40, 0
  br i1 %.not2, label %63, label %41

41:                                               ; preds = %39
  %42 = load i8*, i8** @output, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  br label %49

46:                                               ; preds = %41
  %47 = load i8*, i8** @output, align 8
  %48 = call noalias %struct._IO_FILE* @fopen(i8* noundef %47, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0)) #7
  br label %49

49:                                               ; preds = %46, %44
  %50 = phi %struct._IO_FILE* [ %45, %44 ], [ %48, %46 ]
  %51 = icmp eq %struct._IO_FILE* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  call void @cannot(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %53

53:                                               ; preds = %52, %49
  %54 = bitcast %struct._IO_FILE* %50 to i8*
  %55 = load i32, i32* @stripping, align 4
  %56 = call i32 @luaU_dump(%struct.lua_State* noundef %0, %struct.Proto* noundef %33, i32 (%struct.lua_State*, i8*, i64, i8*)* noundef nonnull @writer, i8* noundef %54, i32 noundef %55) #7
  %57 = call i32 @ferror(%struct._IO_FILE* noundef %50) #7
  %.not3 = icmp eq i32 %57, 0
  br i1 %.not3, label %59, label %58

58:                                               ; preds = %53
  call void @cannot(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  br label %59

59:                                               ; preds = %58, %53
  %60 = call i32 @fclose(%struct._IO_FILE* noundef %50) #7
  %.not4 = icmp eq i32 %60, 0
  br i1 %.not4, label %62, label %61

61:                                               ; preds = %59
  call void @cannot(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  br label %62

62:                                               ; preds = %61, %59
  br label %63

63:                                               ; preds = %62, %39
  ret i32 0
}

declare dso_local i8* @lua_tolstring(%struct.lua_State* noundef, i32 noundef, i64* noundef) #2

declare dso_local void @lua_close(%struct.lua_State* noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local i8* @lua_touserdata(%struct.lua_State* noundef, i32 noundef) #2

declare dso_local i32 @lua_checkstack(%struct.lua_State* noundef, i32 noundef) #2

declare dso_local i32 @luaL_loadfile(%struct.lua_State* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.Proto* @combine(%struct.lua_State* noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i64 -1, i32 0, i32 0
  %8 = bitcast %union.GCObject** %7 to %struct.LClosure**
  %9 = load %struct.LClosure*, %struct.LClosure** %8, align 8
  %10 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %9, i64 0, i32 7
  %11 = load %struct.Proto*, %struct.Proto** %10, align 8
  br label %100

12:                                               ; preds = %2
  %13 = call %struct.Proto* @luaF_newproto(%struct.lua_State* noundef %0) #7
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8
  %16 = bitcast %struct.lua_TValue* %15 to %struct.Proto**
  store %struct.Proto* %13, %struct.Proto** %16, align 8
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i64 0, i32 1
  store i32 9, i32* %17, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9
  %19 = bitcast %struct.lua_TValue** %18 to i8**
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %22 = bitcast %struct.lua_TValue** %21 to i8**
  %23 = load i8*, i8** %22, align 8
  %24 = ptrtoint i8* %20 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = icmp slt i64 %26, 17
  br i1 %27, label %28, label %29

28:                                               ; preds = %12
  call void @luaD_growstack(%struct.lua_State* noundef %0, i32 noundef 1) #7
  br label %30

29:                                               ; preds = %12
  br label %30

30:                                               ; preds = %29, %28
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %31, align 8
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i64 1
  store %struct.lua_TValue* %33, %struct.lua_TValue** %31, align 8
  %34 = call %union.TString* @luaS_newlstr(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i64 noundef 7) #7
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 9
  store %union.TString* %34, %union.TString** %35, align 8
  %36 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 22
  store i8 1, i8* %36, align 1
  %37 = shl nsw i32 %1, 1
  %38 = or i32 %37, 1
  %39 = add i32 %37, 2
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = sext i32 %38 to i64
  %43 = shl nsw i64 %42, 2
  %44 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef null, i64 noundef 0, i64 noundef %43) #7
  br label %47

45:                                               ; preds = %30
  %46 = call i8* @luaM_toobig(%struct.lua_State* noundef %0) #7
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i8* [ %44, %41 ], [ %46, %45 ]
  %49 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 4
  %50 = bitcast i32** %49 to i8**
  store i8* %48, i8** %50, align 8
  %51 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 12
  store i32 %38, i32* %51, align 8
  %52 = icmp sgt i32 %1, -2
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = sext i32 %1 to i64
  %55 = shl nsw i64 %54, 3
  %56 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef null, i64 noundef 0, i64 noundef %55) #7
  br label %59

57:                                               ; preds = %47
  %58 = call i8* @luaM_toobig(%struct.lua_State* noundef %0) #7
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi i8* [ %56, %53 ], [ %58, %57 ]
  %61 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 5
  %62 = bitcast %struct.Proto*** %61 to i8**
  store i8* %60, i8** %62, align 8
  %63 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 14
  store i32 %1, i32* %63, align 8
  br label %64

64:                                               ; preds = %92, %59
  %.02 = phi i32 [ 0, %59 ], [ %94, %92 ]
  %.01 = phi i32 [ 0, %59 ], [ %93, %92 ]
  %65 = icmp slt i32 %.02, %1
  br i1 %65, label %66, label %95

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %68 = load %struct.lua_TValue*, %struct.lua_TValue** %67, align 8
  %69 = xor i32 %1, -1
  %70 = add i32 %.02, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %68, i64 %71, i32 0, i32 0
  %73 = bitcast %union.GCObject** %72 to %struct.LClosure**
  %74 = load %struct.LClosure*, %struct.LClosure** %73, align 8
  %75 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %74, i64 0, i32 7
  %76 = load %struct.Proto*, %struct.Proto** %75, align 8
  %77 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 5
  %78 = load %struct.Proto**, %struct.Proto*** %77, align 8
  %79 = zext i32 %.02 to i64
  %80 = getelementptr inbounds %struct.Proto*, %struct.Proto** %78, i64 %79
  store %struct.Proto* %76, %struct.Proto** %80, align 8
  %81 = shl i32 %.02, 14
  %82 = or i32 %81, 36
  %83 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = or i32 %.01, 1
  %86 = zext i32 %.01 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %82, i32* %87, align 4
  %88 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = zext i32 %85 to i64
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 8405020, i32* %91, align 4
  br label %92

92:                                               ; preds = %66
  %93 = add nuw nsw i32 %.01, 2
  %94 = add nuw nsw i32 %.02, 1
  br label %64, !llvm.loop !7

95:                                               ; preds = %64
  %96 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = zext i32 %.01 to i64
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32 8388638, i32* %99, align 4
  br label %100

100:                                              ; preds = %95, %4
  %.0 = phi %struct.Proto* [ %11, %4 ], [ %13, %95 ]
  ret %struct.Proto* %.0
}

declare hidden void @luaU_print(%struct.Proto* noundef, i32 noundef) #2

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @cannot(i8* noundef %0) #1 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** @progname, align 8
  %4 = load i8*, i8** @output, align 8
  %5 = call i32* @__errno_location() #11
  %6 = load i32, i32* %5, align 4
  %7 = call i8* @strerror(i32 noundef %6) #7
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i8* noundef %3, i8* noundef %0, i8* noundef %4, i8* noundef %7) #10
  call void @exit(i32 noundef 1) #9
  unreachable
}

declare hidden i32 @luaU_dump(%struct.lua_State* noundef, %struct.Proto* noundef, i32 (%struct.lua_State*, i8*, i64, i8*)* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @writer(%struct.lua_State* nocapture noundef readnone %0, i8* noundef %1, i64 noundef %2, i8* noundef %3) #0 {
  %5 = bitcast i8* %3 to %struct._IO_FILE*
  %6 = call i64 @fwrite(i8* noundef %1, i64 noundef %2, i64 noundef 1, %struct._IO_FILE* noundef %5) #7
  %.not = icmp eq i64 %6, 1
  br i1 %.not, label %9, label %7

7:                                                ; preds = %4
  %8 = icmp ne i64 %2, 0
  %phi.cast = zext i1 %8 to i32
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i32 [ 0, %4 ], [ %phi.cast, %7 ]
  ret i32 %10
}

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE* noundef) #5

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

declare hidden %struct.Proto* @luaF_newproto(%struct.lua_State* noundef) #2

declare hidden void @luaD_growstack(%struct.lua_State* noundef, i32 noundef) #2

declare hidden %union.TString* @luaS_newlstr(%struct.lua_State* noundef, i8* noundef, i64 noundef) #2

declare hidden i8* @luaM_realloc_(%struct.lua_State* noundef, i8* noundef, i64 noundef, i64 noundef) #2

declare hidden i8* @luaM_toobig(%struct.lua_State* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32 noundef) #5

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() #6

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { noreturn nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone willreturn }

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
