; ModuleID = './lobject.ll'
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

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define hidden i32 @luaO_int2fb(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %4, %1
  %.02 = phi i32 [ 1, %1 ], [ %phi.bo, %4 ]
  %.01 = phi i32 [ %0, %1 ], [ %6, %4 ]
  %3 = icmp ugt i32 %.01, 15
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = add i32 %.01, 1
  %6 = lshr i32 %5, 1
  %phi.bo = add i32 %.02, 1
  br label %2, !llvm.loop !4

7:                                                ; preds = %2
  %8 = icmp ult i32 %.01, 8
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %14

10:                                               ; preds = %7
  %11 = shl i32 %.02, 3
  %12 = add nsw i32 %.01, -8
  %13 = or i32 %11, %12
  br label %14

14:                                               ; preds = %10, %9
  %.0 = phi i32 [ %.01, %9 ], [ %13, %10 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define hidden i32 @luaO_fb2int(i32 noundef %0) #1 {
  %2 = lshr i32 %0, 3
  %3 = and i32 %2, 31
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %11

6:                                                ; preds = %1
  %7 = and i32 %0, 7
  %8 = or i32 %7, 8
  %9 = add nsw i32 %3, -1
  %10 = shl i32 %8, %9
  br label %11

11:                                               ; preds = %6, %5
  %.0 = phi i32 [ %0, %5 ], [ %10, %6 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define hidden i32 @luaO_log2(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %4, %1
  %.01 = phi i32 [ -1, %1 ], [ %5, %4 ]
  %.0 = phi i32 [ %0, %1 ], [ %6, %4 ]
  %3 = icmp ugt i32 %.0, 255
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = add nsw i32 %.01, 8
  %6 = lshr i32 %.0, 8
  br label %2, !llvm.loop !6

7:                                                ; preds = %2
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* @luaO_log2.log_2, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = add nsw i32 %.01, %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define hidden i32 @luaO_rawequalObj(%struct.lua_TValue* nocapture noundef readonly %0, %struct.lua_TValue* nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i64 0, i32 1
  %4 = load i32, i32* %3, align 8
  %5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1
  %6 = load i32, i32* %5, align 8
  %.not = icmp eq i32 %4, %6
  br i1 %.not, label %8, label %7

7:                                                ; preds = %2
  br label %36

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i64 0, i32 1
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %30 [
    i32 0, label %11
    i32 3, label %12
    i32 1, label %18
    i32 2, label %24
  ]

11:                                               ; preds = %8
  br label %36

12:                                               ; preds = %8
  %13 = bitcast %struct.lua_TValue* %0 to double*
  %14 = load double, double* %13, align 8
  %15 = bitcast %struct.lua_TValue* %1 to double*
  %16 = load double, double* %15, align 8
  %17 = fcmp oeq double %14, %16
  br label %36

18:                                               ; preds = %8
  %19 = bitcast %struct.lua_TValue* %0 to i32*
  %20 = load i32, i32* %19, align 8
  %21 = bitcast %struct.lua_TValue* %1 to i32*
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %20, %22
  br label %36

24:                                               ; preds = %8
  %25 = bitcast %struct.lua_TValue* %0 to i8**
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast %struct.lua_TValue* %1 to i8**
  %28 = load i8*, i8** %27, align 8
  %29 = icmp eq i8* %26, %28
  br label %36

30:                                               ; preds = %8
  %31 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %0, i64 0, i32 0, i32 0
  %32 = load %union.GCObject*, %union.GCObject** %31, align 8
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 0, i32 0
  %34 = load %union.GCObject*, %union.GCObject** %33, align 8
  %35 = icmp eq %union.GCObject* %32, %34
  br label %36

36:                                               ; preds = %30, %24, %18, %12, %11, %7
  %.0.shrunk = phi i1 [ false, %7 ], [ %35, %30 ], [ %29, %24 ], [ %23, %18 ], [ %17, %12 ], [ true, %11 ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define hidden i32 @luaO_str2d(i8* noundef %0, double* nocapture noundef writeonly %1) #3 {
  %3 = alloca i8*, align 8
  %4 = call double @strtod(i8* noundef %0, i8** noundef nonnull %3) #11
  store double %4, double* %1, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, %0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %42

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp eq i8 %10, 120
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp eq i8 %14, 88
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %8
  %17 = call i64 @strtoul(i8* noundef %0, i8** noundef nonnull %3, i32 noundef 16) #11
  %18 = uitofp i64 %17 to double
  store double %18, double* %1, align 8
  br label %19

19:                                               ; preds = %16, %12
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %42

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %34, %24
  %26 = call i16** @__ctype_b_loc() #12
  %27 = load i16*, i16** %26, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds i16, i16* %27, i64 %30
  %32 = load i16, i16* %31, align 2
  %33 = and i16 %32, 8192
  %.not = icmp eq i16 %33, 0
  br i1 %.not, label %37, label %34

34:                                               ; preds = %25
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  store i8* %36, i8** %3, align 8
  br label %25, !llvm.loop !7

37:                                               ; preds = %25
  %38 = load i8*, i8** %3, align 8
  %39 = load i8, i8* %38, align 1
  %.not1 = icmp eq i8 %39, 0
  br i1 %.not1, label %41, label %40

40:                                               ; preds = %37
  br label %42

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %41, %40, %23, %7
  %.0 = phi i32 [ 0, %7 ], [ 1, %23 ], [ 0, %40 ], [ 1, %41 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local double @strtod(i8* noundef, i8** noundef) #4

; Function Attrs: nounwind
declare dso_local i64 @strtoul(i8* noundef, i8** noundef, i32 noundef) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind uwtable
define hidden nonnull i8* @luaO_pushvfstring(%struct.lua_State* noundef %0, i8* noundef %1, %struct.__va_list_tag* nocapture noundef %2) #3 {
  %4 = alloca [2 x i8], align 1
  %5 = alloca [40 x i8], align 16
  %6 = alloca [3 x i8], align 1
  call void @pushstr(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %183, %3
  %.02 = phi i32 [ 1, %3 ], [ %184, %183 ]
  %.01 = phi i8* [ %1, %3 ], [ %185, %183 ]
  %8 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %.01, i32 noundef 37) #13
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %186

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %14 = ptrtoint i8* %8 to i64
  %15 = ptrtoint i8* %.01 to i64
  %16 = sub i64 %14, %15
  %17 = call %union.TString* @luaS_newlstr(%struct.lua_State* noundef %0, i8* noundef %.01, i64 noundef %16) #11
  %18 = bitcast %struct.lua_TValue* %13 to %union.TString**
  store %union.TString* %17, %union.TString** %18, align 8
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %13, i64 0, i32 1
  store i32 4, i32* %19, align 8
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9
  %21 = bitcast %struct.lua_TValue** %20 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %24 = bitcast %struct.lua_TValue** %23 to i8**
  %25 = load i8*, i8** %24, align 8
  %26 = ptrtoint i8* %22 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = icmp slt i64 %28, 17
  br i1 %29, label %30, label %31

30:                                               ; preds = %11
  call void @luaD_growstack(%struct.lua_State* noundef %0, i32 noundef 1) #11
  br label %32

31:                                               ; preds = %11
  br label %32

32:                                               ; preds = %31, %30
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %33, align 8
  %35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i64 1
  store %struct.lua_TValue* %35, %struct.lua_TValue** %33, align 8
  %36 = getelementptr inbounds i8, i8* %8, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  switch i32 %38, label %176 [
    i32 115, label %39
    i32 99, label %59
    i32 100, label %80
    i32 102, label %118
    i32 112, label %155
    i32 37, label %175
  ]

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ult i32 %41, 41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = sext i32 %41 to i64
  %47 = getelementptr i8, i8* %45, i64 %46
  %48 = add i32 %41, 8
  store i32 %48, i32* %40, align 8
  br label %53

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr i8, i8* %51, i64 8
  store i8* %52, i8** %50, align 8
  br label %53

53:                                               ; preds = %49, %43
  %.in6 = phi i8* [ %47, %43 ], [ %51, %49 ]
  %54 = bitcast i8* %.in6 to i8**
  %55 = load i8*, i8** %54, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57, %53
  %.0 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %57 ], [ %55, %53 ]
  call void @pushstr(%struct.lua_State* noundef %0, i8* noundef %.0)
  br label %183

59:                                               ; preds = %32
  %60 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ult i32 %61, 41
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 3
  %65 = load i8*, i8** %64, align 8
  %66 = sext i32 %61 to i64
  %67 = getelementptr i8, i8* %65, i64 %66
  %68 = add i32 %61, 8
  store i32 %68, i32* %60, align 8
  br label %73

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr i8, i8* %71, i64 8
  store i8* %72, i8** %70, align 8
  br label %73

73:                                               ; preds = %69, %63
  %.in5 = phi i8* [ %67, %63 ], [ %71, %69 ]
  %74 = bitcast i8* %.in5 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  store i8 %76, i8* %77, align 1
  %78 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 1
  store i8 0, i8* %78, align 1
  %79 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  call void @pushstr(%struct.lua_State* noundef %0, i8* noundef nonnull %79)
  br label %183

80:                                               ; preds = %32
  %81 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %82 = load %struct.lua_TValue*, %struct.lua_TValue** %81, align 8
  %83 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ult i32 %84, 41
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = sext i32 %84 to i64
  %90 = getelementptr i8, i8* %88, i64 %89
  %91 = add i32 %84, 8
  store i32 %91, i32* %83, align 8
  br label %96

92:                                               ; preds = %80
  %93 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr i8, i8* %94, i64 8
  store i8* %95, i8** %93, align 8
  br label %96

96:                                               ; preds = %92, %86
  %.in4 = phi i8* [ %90, %86 ], [ %94, %92 ]
  %97 = bitcast i8* %.in4 to i32*
  %98 = load i32, i32* %97, align 4
  %99 = sitofp i32 %98 to double
  %100 = bitcast %struct.lua_TValue* %82 to double*
  store double %99, double* %100, align 8
  %101 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %82, i64 0, i32 1
  store i32 3, i32* %101, align 8
  %102 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9
  %103 = bitcast %struct.lua_TValue** %102 to i8**
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %106 = bitcast %struct.lua_TValue** %105 to i8**
  %107 = load i8*, i8** %106, align 8
  %108 = ptrtoint i8* %104 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = icmp slt i64 %110, 17
  br i1 %111, label %112, label %113

112:                                              ; preds = %96
  call void @luaD_growstack(%struct.lua_State* noundef %0, i32 noundef 1) #11
  br label %114

113:                                              ; preds = %96
  br label %114

114:                                              ; preds = %113, %112
  %115 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %116 = load %struct.lua_TValue*, %struct.lua_TValue** %115, align 8
  %117 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %116, i64 1
  store %struct.lua_TValue* %117, %struct.lua_TValue** %115, align 8
  br label %183

118:                                              ; preds = %32
  %119 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %120 = load %struct.lua_TValue*, %struct.lua_TValue** %119, align 8
  %121 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ult i32 %122, 161
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 3
  %126 = load i8*, i8** %125, align 8
  %127 = sext i32 %122 to i64
  %128 = getelementptr i8, i8* %126, i64 %127
  %129 = add i32 %122, 16
  store i32 %129, i32* %121, align 4
  br label %134

130:                                              ; preds = %118
  %131 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr i8, i8* %132, i64 8
  store i8* %133, i8** %131, align 8
  br label %134

134:                                              ; preds = %130, %124
  %.in3 = phi i8* [ %128, %124 ], [ %132, %130 ]
  %135 = bitcast i8* %.in3 to double*
  %136 = load double, double* %135, align 8
  %137 = bitcast %struct.lua_TValue* %120 to double*
  store double %136, double* %137, align 8
  %138 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %120, i64 0, i32 1
  store i32 3, i32* %138, align 8
  %139 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9
  %140 = bitcast %struct.lua_TValue** %139 to i8**
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %143 = bitcast %struct.lua_TValue** %142 to i8**
  %144 = load i8*, i8** %143, align 8
  %145 = ptrtoint i8* %141 to i64
  %146 = ptrtoint i8* %144 to i64
  %147 = sub i64 %145, %146
  %148 = icmp slt i64 %147, 17
  br i1 %148, label %149, label %150

149:                                              ; preds = %134
  call void @luaD_growstack(%struct.lua_State* noundef %0, i32 noundef 1) #11
  br label %151

150:                                              ; preds = %134
  br label %151

151:                                              ; preds = %150, %149
  %152 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %153 = load %struct.lua_TValue*, %struct.lua_TValue** %152, align 8
  %154 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %153, i64 1
  store %struct.lua_TValue* %154, %struct.lua_TValue** %152, align 8
  br label %183

155:                                              ; preds = %32
  %156 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %157 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp ult i32 %158, 41
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 3
  %162 = load i8*, i8** %161, align 8
  %163 = sext i32 %158 to i64
  %164 = getelementptr i8, i8* %162, i64 %163
  %165 = add i32 %158, 8
  store i32 %165, i32* %157, align 8
  br label %170

166:                                              ; preds = %155
  %167 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
  %168 = load i8*, i8** %167, align 8
  %169 = getelementptr i8, i8* %168, i64 8
  store i8* %169, i8** %167, align 8
  br label %170

170:                                              ; preds = %166, %160
  %.in = phi i8* [ %164, %160 ], [ %168, %166 ]
  %171 = bitcast i8* %.in to i8**
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %156, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef %172) #11
  %174 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  call void @pushstr(%struct.lua_State* noundef %0, i8* noundef nonnull %174)
  br label %183

175:                                              ; preds = %32
  call void @pushstr(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %183

176:                                              ; preds = %32
  %177 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  store i8 37, i8* %177, align 1
  %178 = getelementptr inbounds i8, i8* %8, i64 1
  %179 = load i8, i8* %178, align 1
  %180 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  store i8 %179, i8* %180, align 1
  %181 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  store i8 0, i8* %181, align 1
  %182 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  call void @pushstr(%struct.lua_State* noundef %0, i8* noundef nonnull %182)
  br label %183

183:                                              ; preds = %176, %175, %170, %151, %114, %73, %58
  %184 = add nuw nsw i32 %.02, 2
  %185 = getelementptr inbounds i8, i8* %8, i64 2
  br label %7

186:                                              ; preds = %10
  call void @pushstr(%struct.lua_State* noundef %0, i8* noundef %.01)
  %187 = add nuw nsw i32 %.02, 1
  %188 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %189 = load %struct.lua_TValue*, %struct.lua_TValue** %188, align 8
  %190 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5
  %191 = load %struct.lua_TValue*, %struct.lua_TValue** %190, align 8
  %192 = ptrtoint %struct.lua_TValue* %189 to i64
  %193 = ptrtoint %struct.lua_TValue* %191 to i64
  %194 = sub i64 %192, %193
  %195 = lshr exact i64 %194, 4
  %196 = trunc i64 %195 to i32
  %197 = add nsw i32 %196, -1
  call void @luaV_concat(%struct.lua_State* noundef %0, i32 noundef %187, i32 noundef %197) #11
  %198 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %199 = load %struct.lua_TValue*, %struct.lua_TValue** %198, align 8
  %200 = zext i32 %.02 to i64
  %201 = sub nsw i64 0, %200
  %202 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %199, i64 %201
  store %struct.lua_TValue* %202, %struct.lua_TValue** %198, align 8
  %203 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %202, i64 -1
  %204 = bitcast %struct.lua_TValue* %203 to %union.TString**
  %205 = load %union.TString*, %union.TString** %204, align 8
  %206 = getelementptr inbounds %union.TString, %union.TString* %205, i64 1
  %207 = bitcast %union.TString* %206 to i8*
  ret i8* %207
}

; Function Attrs: noinline nounwind uwtable
define internal void @pushstr(%struct.lua_State* noundef %0, i8* noundef %1) #3 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8
  %5 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #13
  %6 = call %union.TString* @luaS_newlstr(%struct.lua_State* noundef %0, i8* noundef %1, i64 noundef %5) #11
  %7 = bitcast %struct.lua_TValue* %4 to %union.TString**
  store %union.TString* %6, %union.TString** %7, align 8
  %8 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1
  store i32 4, i32* %8, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9
  %10 = bitcast %struct.lua_TValue** %9 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %13 = bitcast %struct.lua_TValue** %12 to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = ptrtoint i8* %11 to i64
  %16 = ptrtoint i8* %14 to i64
  %17 = sub i64 %15, %16
  %18 = icmp slt i64 %17, 17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  call void @luaD_growstack(%struct.lua_State* noundef %0, i32 noundef 1) #11
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %19
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %22, align 8
  %24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i64 1
  store %struct.lua_TValue* %24, %struct.lua_TValue** %22, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #6

declare hidden %union.TString* @luaS_newlstr(%struct.lua_State* noundef, i8* noundef, i64 noundef) #7

declare hidden void @luaD_growstack(%struct.lua_State* noundef, i32 noundef) #7

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #4

declare hidden void @luaV_concat(%struct.lua_State* noundef, i32 noundef, i32 noundef) #7

; Function Attrs: noinline nounwind uwtable
define hidden nonnull i8* @luaO_pushfstring(%struct.lua_State* noundef %0, i8* noundef %1, ...) #3 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %6 = call i8* @luaO_pushvfstring(%struct.lua_State* noundef %0, i8* noundef %1, %struct.__va_list_tag* noundef nonnull %5)
  %7 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %7)
  ret i8* %6
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #8

; Function Attrs: noinline nounwind uwtable
define hidden void @luaO_chunkid(i8* noundef %0, i8* noundef %1, i64 noundef %2) #3 {
  %4 = load i8, i8* %1, align 1
  %5 = icmp eq i8 %4, 61
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %1, i64 1
  %8 = call i8* @strncpy(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull %7, i64 noundef %2) #11
  %9 = add i64 %2, -1
  %10 = getelementptr inbounds i8, i8* %0, i64 %9
  store i8 0, i8* %10, align 1
  br label %40

11:                                               ; preds = %3
  %12 = load i8, i8* %1, align 1
  %13 = icmp eq i8 %12, 64
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = getelementptr inbounds i8, i8* %1, i64 1
  %16 = add i64 %2, -8
  %17 = call i64 @strlen(i8* noundef nonnull %15) #13
  store i8 0, i8* %0, align 1
  %18 = icmp ugt i64 %17, %16
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = sub i64 %17, %16
  %21 = getelementptr inbounds i8, i8* %15, i64 %20
  %strlen4 = call i64 @strlen(i8* nonnull %0)
  %endptr5 = getelementptr i8, i8* %0, i64 %strlen4
  %22 = bitcast i8* %endptr5 to i32*
  store i32 3026478, i32* %22, align 1
  br label %23

23:                                               ; preds = %19, %14
  %.01 = phi i8* [ %21, %19 ], [ %15, %14 ]
  %24 = call i8* @strcat(i8* noundef nonnull %0, i8* noundef nonnull dereferenceable(1) %.01) #11
  br label %39

25:                                               ; preds = %11
  %26 = call i64 @strcspn(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #13
  %27 = add i64 %2, -17
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29, %25
  %.0 = phi i64 [ %27, %29 ], [ %26, %25 ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(10) %0, i8* noundef nonnull align 1 dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i64 10, i1 false) #11
  %31 = getelementptr inbounds i8, i8* %1, i64 %.0
  %32 = load i8, i8* %31, align 1
  %.not = icmp eq i8 %32, 0
  br i1 %.not, label %36, label %33

33:                                               ; preds = %30
  %34 = call i8* @strncat(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull %1, i64 noundef %.0) #11
  %strlen2 = call i64 @strlen(i8* nonnull dereferenceable(1) %0)
  %endptr3 = getelementptr i8, i8* %0, i64 %strlen2
  %35 = bitcast i8* %endptr3 to i32*
  store i32 3026478, i32* %35, align 1
  br label %38

36:                                               ; preds = %30
  %37 = call i8* @strcat(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull %1) #11
  br label %38

38:                                               ; preds = %36, %33
  %strlen = call i64 @strlen(i8* nonnull dereferenceable(1) %0)
  %endptr = getelementptr i8, i8* %0, i64 %strlen
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %endptr, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i64 3, i1 false)
  br label %39

39:                                               ; preds = %38, %23
  br label %40

40:                                               ; preds = %39, %6
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture noundef) #9

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #4

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strcspn(i8* noundef, i8* noundef) #6

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

attributes #0 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone willreturn }
attributes #13 = { nounwind readonly willreturn }

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
