; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/lua/lobject.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/lua/lobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %union.GCObject* }
%union.GCObject = type { %struct.lua_State }
%struct.lua_State = type { %union.GCObject*, i8, i8, i8, %struct.lua_TValue*, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, i32, i32, i16, i16, i8, i8, i32, i32, void (%struct.lua_State*, %struct.lua_Debug*)*, %struct.lua_TValue, %struct.lua_TValue, %union.GCObject*, %union.GCObject*, %struct.lua_longjmp*, i64 }
%struct.global_State = type { %struct.stringtable, i8* (i8*, i8*, i64, i64)*, i8*, i8, i8, i32, %union.GCObject*, %union.GCObject**, %union.GCObject*, %union.GCObject*, %union.GCObject*, %union.GCObject*, %struct.Mbuffer, i64, i64, i64, i64, i32, i32, {}*, %struct.lua_TValue, %struct.lua_State*, %struct.UpVal, [9 x %struct.Table*], [17 x %union.TString*] }
%struct.stringtable = type { %union.GCObject**, i32, i32 }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.UpVal = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, %union.anon }
%union.anon = type { %struct.lua_TValue }
%struct.Table = type { %union.GCObject*, i8, i8, i8, i8, %struct.Table*, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %union.GCObject*, i32 }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.1 }
%struct.anon.1 = type { %union.Value, i32, %struct.Node* }
%union.TString = type { %struct.anon }
%struct.anon = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_longjmp = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@luaO_nilobject_ = hidden constant %struct.lua_TValue zeroinitializer, align 8
@luaO_log2.log_2 = internal constant [256 x i8] c"\00\01\02\02\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08", align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0D\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"[string \22\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\22]\00", align 1

; Function Attrs: noinline nounwind uwtable
define hidden i32 @luaO_int2fb(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %8, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp uge i32 %6, 16
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = add i32 %9, 1
  %11 = lshr i32 %10, 1
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %4, align 4
  br label %5, !llvm.loop !4

14:                                               ; preds = %5
  %15 = load i32, i32* %3, align 4
  %16 = icmp ult i32 %15, 8
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* %2, align 4
  br label %26

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  %22 = shl i32 %21, 3
  %23 = load i32, i32* %3, align 4
  %24 = sub nsw i32 %23, 8
  %25 = or i32 %22, %24
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %19, %17
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define hidden i32 @luaO_fb2int(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = ashr i32 %5, 3
  %7 = and i32 %6, 31
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %2, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 7
  %15 = add nsw i32 %14, 8
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, 1
  %18 = shl i32 %15, %17
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %12, %10
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define hidden i32 @luaO_log2(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 -1, i32* %3, align 4
  br label %4

4:                                                ; preds = %7, %1
  %5 = load i32, i32* %2, align 4
  %6 = icmp uge i32 %5, 256
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, 8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = lshr i32 %10, 8
  store i32 %11, i32* %2, align 4
  br label %4, !llvm.loop !6

12:                                               ; preds = %4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %2, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* @luaO_log2.log_2, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = add nsw i32 %13, %18
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define hidden i32 @luaO_rawequalObj(%struct.lua_TValue* noundef %0, %struct.lua_TValue* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_TValue*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_TValue* %0, %struct.lua_TValue** %4, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %5, align 8
  %6 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %7 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %10 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

14:                                               ; preds = %2
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %52 [
    i32 0, label %18
    i32 3, label %19
    i32 1, label %30
    i32 2, label %41
  ]

18:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %63

19:                                               ; preds = %14
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 0, i32 0
  %22 = bitcast %union.Value* %21 to double*
  %23 = load double, double* %22, align 8
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i32 0, i32 0
  %26 = bitcast %union.Value* %25 to double*
  %27 = load double, double* %26, align 8
  %28 = fcmp oeq double %23, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %63

30:                                               ; preds = %14
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i32 0, i32 0
  %33 = bitcast %union.Value* %32 to i32*
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %35, i32 0, i32 0
  %37 = bitcast %union.Value* %36 to i32*
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %34, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %63

41:                                               ; preds = %14
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %43 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %42, i32 0, i32 0
  %44 = bitcast %union.Value* %43 to i8**
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %47 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %46, i32 0, i32 0
  %48 = bitcast %union.Value* %47 to i8**
  %49 = load i8*, i8** %48, align 8
  %50 = icmp eq i8* %45, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %63

52:                                               ; preds = %14
  %53 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %54 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %53, i32 0, i32 0
  %55 = bitcast %union.Value* %54 to %union.GCObject**
  %56 = load %union.GCObject*, %union.GCObject** %55, align 8
  %57 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %58 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %57, i32 0, i32 0
  %59 = bitcast %union.Value* %58 to %union.GCObject**
  %60 = load %union.GCObject*, %union.GCObject** %59, align 8
  %61 = icmp eq %union.GCObject* %56, %60
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %52, %41, %30, %19, %18, %13
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

; Function Attrs: noinline nounwind uwtable
define hidden i32 @luaO_str2d(i8* noundef %0, double* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store double* %1, double** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call double @strtod(i8* noundef %7, i8** noundef %6) #6
  %9 = load double*, double** %5, align 8
  store double %8, double* %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 120
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 88
  br i1 %23, label %24, label %29

24:                                               ; preds = %19, %14
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @strtoul(i8* noundef %25, i8** noundef %6, i32 noundef 16) #6
  %27 = uitofp i64 %26 to double
  %28 = load double*, double** %5, align 8
  store double %27, double* %28, align 8
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %58

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %48, %35
  %37 = call i16** @__ctype_b_loc() #7
  %38 = load i16*, i16** %37, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i16, i16* %38, i64 %42
  %44 = load i16, i16* %43, align 2
  %45 = zext i16 %44 to i32
  %46 = and i32 %45, 8192
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %36
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %6, align 8
  br label %36, !llvm.loop !7

51:                                               ; preds = %36
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %58

57:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %56, %34, %13
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

; Function Attrs: nounwind
declare dso_local double @strtod(i8* noundef, i8** noundef) #1

; Function Attrs: nounwind
declare dso_local i64 @strtoul(i8* noundef, i8** noundef, i32 noundef) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #2

; Function Attrs: noinline nounwind uwtable
define hidden i8* @luaO_pushvfstring(%struct.lua_State* noundef %0, i8* noundef %1, %struct.__va_list_tag* noundef %2) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [2 x i8], align 1
  %12 = alloca %struct.lua_TValue*, align 8
  %13 = alloca %struct.lua_TValue*, align 8
  %14 = alloca [40 x i8], align 16
  %15 = alloca [3 x i8], align 1
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  store i32 1, i32* %7, align 4
  %16 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @pushstr(%struct.lua_State* noundef %16, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %243, %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @strchr(i8* noundef %18, i32 noundef 37) #8
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %248

23:                                               ; preds = %17
  %24 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 4
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %25, align 8
  store %struct.lua_TValue* %26, %struct.lua_TValue** %9, align 8
  %27 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = call %union.TString* @luaS_newlstr(%struct.lua_State* noundef %27, i8* noundef %28, i64 noundef %33)
  %35 = bitcast %union.TString* %34 to %union.GCObject*
  %36 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %37 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %36, i32 0, i32 0
  %38 = bitcast %union.Value* %37 to %union.GCObject**
  store %union.GCObject* %35, %union.GCObject** %38, align 8
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i32 0, i32 1
  store i32 4, i32* %40, align 8
  %41 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %41, i32 0, i32 9
  %43 = load %struct.lua_TValue*, %struct.lua_TValue** %42, align 8
  %44 = bitcast %struct.lua_TValue* %43 to i8*
  %45 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %46 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %45, i32 0, i32 4
  %47 = load %struct.lua_TValue*, %struct.lua_TValue** %46, align 8
  %48 = bitcast %struct.lua_TValue* %47 to i8*
  %49 = ptrtoint i8* %44 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = icmp sle i64 %51, 16
  br i1 %52, label %53, label %55

53:                                               ; preds = %23
  %54 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaD_growstack(%struct.lua_State* noundef %54, i32 noundef 1)
  br label %56

55:                                               ; preds = %23
  br label %56

56:                                               ; preds = %55, %53
  %57 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %58 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %57, i32 0, i32 4
  %59 = load %struct.lua_TValue*, %struct.lua_TValue** %58, align 8
  %60 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %59, i32 1
  store %struct.lua_TValue* %60, %struct.lua_TValue** %58, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  switch i32 %64, label %234 [
    i32 115, label %65
    i32 99, label %90
    i32 100, label %114
    i32 102, label %162
    i32 112, label %209
    i32 37, label %232
  ]

65:                                               ; preds = %56
  %66 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %67 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ule i32 %68, 40
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %66, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr i8, i8* %72, i32 %68
  %74 = bitcast i8* %73 to i8**
  %75 = add i32 %68, 8
  store i32 %75, i32* %67, align 8
  br label %81

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %66, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = bitcast i8* %78 to i8**
  %80 = getelementptr i8, i8* %78, i32 8
  store i8* %80, i8** %77, align 8
  br label %81

81:                                               ; preds = %76, %70
  %82 = phi i8** [ %74, %70 ], [ %79, %76 ]
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %10, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %87

87:                                               ; preds = %86, %81
  %88 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %89 = load i8*, i8** %10, align 8
  call void @pushstr(%struct.lua_State* noundef %88, i8* noundef %89)
  br label %243

90:                                               ; preds = %56
  %91 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %92 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ule i32 %93, 40
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %91, i32 0, i32 3
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr i8, i8* %97, i32 %93
  %99 = bitcast i8* %98 to i32*
  %100 = add i32 %93, 8
  store i32 %100, i32* %92, align 8
  br label %106

101:                                              ; preds = %90
  %102 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %91, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = bitcast i8* %103 to i32*
  %105 = getelementptr i8, i8* %103, i32 8
  store i8* %105, i8** %102, align 8
  br label %106

106:                                              ; preds = %101, %95
  %107 = phi i32* [ %99, %95 ], [ %104, %101 ]
  %108 = load i32, i32* %107, align 4
  %109 = trunc i32 %108 to i8
  %110 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  store i8 %109, i8* %110, align 1
  %111 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  store i8 0, i8* %111, align 1
  %112 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %113 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  call void @pushstr(%struct.lua_State* noundef %112, i8* noundef %113)
  br label %243

114:                                              ; preds = %56
  %115 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %116 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %115, i32 0, i32 4
  %117 = load %struct.lua_TValue*, %struct.lua_TValue** %116, align 8
  store %struct.lua_TValue* %117, %struct.lua_TValue** %12, align 8
  %118 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %119 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ule i32 %120, 40
  br i1 %121, label %122, label %128

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %118, i32 0, i32 3
  %124 = load i8*, i8** %123, align 8
  %125 = getelementptr i8, i8* %124, i32 %120
  %126 = bitcast i8* %125 to i32*
  %127 = add i32 %120, 8
  store i32 %127, i32* %119, align 8
  br label %133

128:                                              ; preds = %114
  %129 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %118, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = bitcast i8* %130 to i32*
  %132 = getelementptr i8, i8* %130, i32 8
  store i8* %132, i8** %129, align 8
  br label %133

133:                                              ; preds = %128, %122
  %134 = phi i32* [ %126, %122 ], [ %131, %128 ]
  %135 = load i32, i32* %134, align 4
  %136 = sitofp i32 %135 to double
  %137 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %138 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %137, i32 0, i32 0
  %139 = bitcast %union.Value* %138 to double*
  store double %136, double* %139, align 8
  %140 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %141 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %140, i32 0, i32 1
  store i32 3, i32* %141, align 8
  %142 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %143 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %142, i32 0, i32 9
  %144 = load %struct.lua_TValue*, %struct.lua_TValue** %143, align 8
  %145 = bitcast %struct.lua_TValue* %144 to i8*
  %146 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %147 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %146, i32 0, i32 4
  %148 = load %struct.lua_TValue*, %struct.lua_TValue** %147, align 8
  %149 = bitcast %struct.lua_TValue* %148 to i8*
  %150 = ptrtoint i8* %145 to i64
  %151 = ptrtoint i8* %149 to i64
  %152 = sub i64 %150, %151
  %153 = icmp sle i64 %152, 16
  br i1 %153, label %154, label %156

154:                                              ; preds = %133
  %155 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaD_growstack(%struct.lua_State* noundef %155, i32 noundef 1)
  br label %157

156:                                              ; preds = %133
  br label %157

157:                                              ; preds = %156, %154
  %158 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %159 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %158, i32 0, i32 4
  %160 = load %struct.lua_TValue*, %struct.lua_TValue** %159, align 8
  %161 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %160, i32 1
  store %struct.lua_TValue* %161, %struct.lua_TValue** %159, align 8
  br label %243

162:                                              ; preds = %56
  %163 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %164 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %163, i32 0, i32 4
  %165 = load %struct.lua_TValue*, %struct.lua_TValue** %164, align 8
  store %struct.lua_TValue* %165, %struct.lua_TValue** %13, align 8
  %166 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %167 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp ule i32 %168, 160
  br i1 %169, label %170, label %176

170:                                              ; preds = %162
  %171 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %166, i32 0, i32 3
  %172 = load i8*, i8** %171, align 8
  %173 = getelementptr i8, i8* %172, i32 %168
  %174 = bitcast i8* %173 to double*
  %175 = add i32 %168, 16
  store i32 %175, i32* %167, align 4
  br label %181

176:                                              ; preds = %162
  %177 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %166, i32 0, i32 2
  %178 = load i8*, i8** %177, align 8
  %179 = bitcast i8* %178 to double*
  %180 = getelementptr i8, i8* %178, i32 8
  store i8* %180, i8** %177, align 8
  br label %181

181:                                              ; preds = %176, %170
  %182 = phi double* [ %174, %170 ], [ %179, %176 ]
  %183 = load double, double* %182, align 8
  %184 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8
  %185 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %184, i32 0, i32 0
  %186 = bitcast %union.Value* %185 to double*
  store double %183, double* %186, align 8
  %187 = load %struct.lua_TValue*, %struct.lua_TValue** %13, align 8
  %188 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %187, i32 0, i32 1
  store i32 3, i32* %188, align 8
  %189 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %190 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %189, i32 0, i32 9
  %191 = load %struct.lua_TValue*, %struct.lua_TValue** %190, align 8
  %192 = bitcast %struct.lua_TValue* %191 to i8*
  %193 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %194 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %193, i32 0, i32 4
  %195 = load %struct.lua_TValue*, %struct.lua_TValue** %194, align 8
  %196 = bitcast %struct.lua_TValue* %195 to i8*
  %197 = ptrtoint i8* %192 to i64
  %198 = ptrtoint i8* %196 to i64
  %199 = sub i64 %197, %198
  %200 = icmp sle i64 %199, 16
  br i1 %200, label %201, label %203

201:                                              ; preds = %181
  %202 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaD_growstack(%struct.lua_State* noundef %202, i32 noundef 1)
  br label %204

203:                                              ; preds = %181
  br label %204

204:                                              ; preds = %203, %201
  %205 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %206 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %205, i32 0, i32 4
  %207 = load %struct.lua_TValue*, %struct.lua_TValue** %206, align 8
  %208 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %207, i32 1
  store %struct.lua_TValue* %208, %struct.lua_TValue** %206, align 8
  br label %243

209:                                              ; preds = %56
  %210 = getelementptr inbounds [40 x i8], [40 x i8]* %14, i64 0, i64 0
  %211 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %212 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp ule i32 %213, 40
  br i1 %214, label %215, label %221

215:                                              ; preds = %209
  %216 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %211, i32 0, i32 3
  %217 = load i8*, i8** %216, align 8
  %218 = getelementptr i8, i8* %217, i32 %213
  %219 = bitcast i8* %218 to i8**
  %220 = add i32 %213, 8
  store i32 %220, i32* %212, align 8
  br label %226

221:                                              ; preds = %209
  %222 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %211, i32 0, i32 2
  %223 = load i8*, i8** %222, align 8
  %224 = bitcast i8* %223 to i8**
  %225 = getelementptr i8, i8* %223, i32 8
  store i8* %225, i8** %222, align 8
  br label %226

226:                                              ; preds = %221, %215
  %227 = phi i8** [ %219, %215 ], [ %224, %221 ]
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %210, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef %228) #6
  %230 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %231 = getelementptr inbounds [40 x i8], [40 x i8]* %14, i64 0, i64 0
  call void @pushstr(%struct.lua_State* noundef %230, i8* noundef %231)
  br label %243

232:                                              ; preds = %56
  %233 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @pushstr(%struct.lua_State* noundef %233, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %243

234:                                              ; preds = %56
  %235 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  store i8 37, i8* %235, align 1
  %236 = load i8*, i8** %8, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 1
  %238 = load i8, i8* %237, align 1
  %239 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 1
  store i8 %238, i8* %239, align 1
  %240 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 2
  store i8 0, i8* %240, align 1
  %241 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %242 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  call void @pushstr(%struct.lua_State* noundef %241, i8* noundef %242)
  br label %243

243:                                              ; preds = %234, %232, %226, %204, %157, %106, %87
  %244 = load i32, i32* %7, align 4
  %245 = add nsw i32 %244, 2
  store i32 %245, i32* %7, align 4
  %246 = load i8*, i8** %8, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 2
  store i8* %247, i8** %5, align 8
  br label %17

248:                                              ; preds = %22
  %249 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %250 = load i8*, i8** %5, align 8
  call void @pushstr(%struct.lua_State* noundef %249, i8* noundef %250)
  %251 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %252 = load i32, i32* %7, align 4
  %253 = add nsw i32 %252, 1
  %254 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %255 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %254, i32 0, i32 4
  %256 = load %struct.lua_TValue*, %struct.lua_TValue** %255, align 8
  %257 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %258 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %257, i32 0, i32 5
  %259 = load %struct.lua_TValue*, %struct.lua_TValue** %258, align 8
  %260 = ptrtoint %struct.lua_TValue* %256 to i64
  %261 = ptrtoint %struct.lua_TValue* %259 to i64
  %262 = sub i64 %260, %261
  %263 = sdiv exact i64 %262, 16
  %264 = trunc i64 %263 to i32
  %265 = sub nsw i32 %264, 1
  call void @luaV_concat(%struct.lua_State* noundef %251, i32 noundef %253, i32 noundef %265)
  %266 = load i32, i32* %7, align 4
  %267 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %268 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %267, i32 0, i32 4
  %269 = load %struct.lua_TValue*, %struct.lua_TValue** %268, align 8
  %270 = sext i32 %266 to i64
  %271 = sub i64 0, %270
  %272 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %269, i64 %271
  store %struct.lua_TValue* %272, %struct.lua_TValue** %268, align 8
  %273 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %274 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %273, i32 0, i32 4
  %275 = load %struct.lua_TValue*, %struct.lua_TValue** %274, align 8
  %276 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %275, i64 -1
  %277 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %276, i32 0, i32 0
  %278 = bitcast %union.Value* %277 to %union.GCObject**
  %279 = load %union.GCObject*, %union.GCObject** %278, align 8
  %280 = bitcast %union.GCObject* %279 to %union.TString*
  %281 = getelementptr inbounds %union.TString, %union.TString* %280, i64 1
  %282 = bitcast %union.TString* %281 to i8*
  ret i8* %282
}

; Function Attrs: noinline nounwind uwtable
define internal void @pushstr(%struct.lua_State* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 4
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  store %struct.lua_TValue* %8, %struct.lua_TValue** %5, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @strlen(i8* noundef %11) #8
  %13 = call %union.TString* @luaS_newlstr(%struct.lua_State* noundef %9, i8* noundef %10, i64 noundef %12)
  %14 = bitcast %union.TString* %13 to %union.GCObject*
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %16 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %15, i32 0, i32 0
  %17 = bitcast %union.Value* %16 to %union.GCObject**
  store %union.GCObject* %14, %union.GCObject** %17, align 8
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %18, i32 0, i32 1
  store i32 4, i32* %19, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 9
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %21, align 8
  %23 = bitcast %struct.lua_TValue* %22 to i8*
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 4
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %25, align 8
  %27 = bitcast %struct.lua_TValue* %26 to i8*
  %28 = ptrtoint i8* %23 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = icmp sle i64 %30, 16
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaD_growstack(%struct.lua_State* noundef %33, i32 noundef 1)
  br label %35

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %34, %32
  %36 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 4
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8
  %39 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %38, i32 1
  store %struct.lua_TValue* %39, %struct.lua_TValue** %37, align 8
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #3

declare hidden %union.TString* @luaS_newlstr(%struct.lua_State* noundef, i8* noundef, i64 noundef) #4

declare hidden void @luaD_growstack(%struct.lua_State* noundef, i32 noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare hidden void @luaV_concat(%struct.lua_State* noundef, i32 noundef, i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define hidden i8* @luaO_pushfstring(%struct.lua_State* noundef %0, i8* noundef %1, ...) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %8 = bitcast %struct.__va_list_tag* %7 to i8*
  call void @llvm.va_start(i8* %8)
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %12 = call i8* @luaO_pushvfstring(%struct.lua_State* noundef %9, i8* noundef %10, %struct.__va_list_tag* noundef %11)
  store i8* %12, i8** %5, align 8
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %14 = bitcast %struct.__va_list_tag* %13 to i8*
  call void @llvm.va_end(i8* %14)
  %15 = load i8*, i8** %5, align 8
  ret i8* %15
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #5

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #5

; Function Attrs: noinline nounwind uwtable
define hidden void @luaO_chunkid(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 61
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i64, i64* %6, align 8
  %18 = call i8* @strncpy(i8* noundef %14, i8* noundef %16, i64 noundef %17) #6
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = sub i64 %20, 1
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8 0, i8* %22, align 1
  br label %86

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 64
  br i1 %27, label %28, label %52

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = sub i64 %31, 8
  store i64 %32, i64* %6, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @strlen(i8* noundef %33) #8
  store i64 %34, i64* %7, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i8* @strcpy(i8* noundef %35, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #6
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %28
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %6, align 8
  %43 = sub i64 %41, %42
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 %43
  store i8* %45, i8** %5, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = call i8* @strcat(i8* noundef %46, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #6
  br label %48

48:                                               ; preds = %40, %28
  %49 = load i8*, i8** %4, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i8* @strcat(i8* noundef %49, i8* noundef %50) #6
  br label %85

52:                                               ; preds = %23
  %53 = load i8*, i8** %5, align 8
  %54 = call i64 @strcspn(i8* noundef %53, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #8
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %6, align 8
  %56 = sub i64 %55, 17
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i64, i64* %6, align 8
  store i64 %61, i64* %8, align 8
  br label %62

62:                                               ; preds = %60, %52
  %63 = load i8*, i8** %4, align 8
  %64 = call i8* @strcpy(i8* noundef %63, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #6
  %65 = load i8*, i8** %5, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %62
  %72 = load i8*, i8** %4, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i8* @strncat(i8* noundef %72, i8* noundef %73, i64 noundef %74) #6
  %76 = load i8*, i8** %4, align 8
  %77 = call i8* @strcat(i8* noundef %76, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #6
  br label %82

78:                                               ; preds = %62
  %79 = load i8*, i8** %4, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = call i8* @strcat(i8* noundef %79, i8* noundef %80) #6
  br label %82

82:                                               ; preds = %78, %71
  %83 = load i8*, i8** %4, align 8
  %84 = call i8* @strcat(i8* noundef %83, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #6
  br label %85

85:                                               ; preds = %82, %48
  br label %86

86:                                               ; preds = %85, %13
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strcspn(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8* noundef, i8* noundef, i64 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { nounwind readonly willreturn }

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
