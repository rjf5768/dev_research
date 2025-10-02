; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/genmalloc.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/genmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slist_genmalloc_memory_head = type { %struct.genmalloc_memory_entry* }
%struct.genmalloc_memory_entry = type { i8*, i64, %struct.anon }
%struct.anon = type { %struct.genmalloc_memory_entry* }

@genmalloc_memory_head = dso_local global %struct.slist_genmalloc_memory_head zeroinitializer, align 8
@.str = private unnamed_addr constant [89 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/genmalloc.c\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"Error -- element size not supported in genmalloc for call at %s line %d\0A\00", align 1
@genmalloc_memory_item = dso_local global %struct.genmalloc_memory_entry* null, align 8
@genmalloc_memory_headp = dso_local global %struct.slist_genmalloc_memory_head* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @genvector_p(i32 noundef %0, i64 noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* %6, align 8
  %14 = mul i64 %12, %13
  store i64 %14, i64* %10, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %6, align 8
  %18 = call noalias i8* @calloc(i64 noundef %16, i64 noundef %17) #3
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i8* @genmalloc_memory_add_p(i8* noundef %19, i64 noundef %20, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 88)
  %22 = load i8*, i8** %9, align 8
  ret i8* %22
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @genmalloc_memory_add_p(i8* noundef %0, i64 noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i32 0, i32 0), align 8
  %10 = icmp eq %struct.genmalloc_memory_entry* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %11
  store %struct.genmalloc_memory_entry* null, %struct.genmalloc_memory_entry** getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i32 0, i32 0), align 8
  br label %13

13:                                               ; preds = %12
  br label %14

14:                                               ; preds = %13, %4
  %15 = call noalias i8* @malloc(i64 noundef 24) #3
  %16 = bitcast i8* %15 to %struct.genmalloc_memory_entry*
  store %struct.genmalloc_memory_entry* %16, %struct.genmalloc_memory_entry** @genmalloc_memory_item, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** @genmalloc_memory_item, align 8
  %19 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** @genmalloc_memory_item, align 8
  %22 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %14
  %24 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i32 0, i32 0), align 8
  %25 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** @genmalloc_memory_item, align 8
  %26 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 0
  store %struct.genmalloc_memory_entry* %24, %struct.genmalloc_memory_entry** %27, align 8
  %28 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** @genmalloc_memory_item, align 8
  store %struct.genmalloc_memory_entry* %28, %struct.genmalloc_memory_entry** getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i32 0, i32 0), align 8
  br label %29

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  ret i8* %30
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @genvectorfree_p(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  call void @genmalloc_memory_remove_p(i8* noundef %7, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 98)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @genmalloc_memory_remove_p(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.genmalloc_memory_entry*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i32 0, i32 0), align 8
  store %struct.genmalloc_memory_entry* %8, %struct.genmalloc_memory_entry** @genmalloc_memory_item, align 8
  br label %9

9:                                                ; preds = %61, %3
  %10 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** @genmalloc_memory_item, align 8
  %11 = icmp ne %struct.genmalloc_memory_entry* %10, null
  br i1 %11, label %12, label %66

12:                                               ; preds = %9
  %13 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** @genmalloc_memory_item, align 8
  %14 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp eq i8* %15, %16
  br i1 %17, label %18, label %60

18:                                               ; preds = %12
  %19 = load i8*, i8** %4, align 8
  call void @free(i8* noundef %19) #3
  br label %20

20:                                               ; preds = %18
  %21 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i32 0, i32 0), align 8
  %22 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** @genmalloc_memory_item, align 8
  %23 = icmp eq %struct.genmalloc_memory_entry* %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i32 0, i32 0), align 8
  %27 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %27, i32 0, i32 0
  %29 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** %28, align 8
  store %struct.genmalloc_memory_entry* %29, %struct.genmalloc_memory_entry** getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i32 0, i32 0), align 8
  br label %30

30:                                               ; preds = %25
  br label %56

31:                                               ; preds = %20
  %32 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i32 0, i32 0), align 8
  store %struct.genmalloc_memory_entry* %32, %struct.genmalloc_memory_entry** %7, align 8
  br label %33

33:                                               ; preds = %40, %31
  %34 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** %7, align 8
  %35 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 0
  %37 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** %36, align 8
  %38 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** @genmalloc_memory_item, align 8
  %39 = icmp ne %struct.genmalloc_memory_entry* %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** %7, align 8
  %42 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.anon, %struct.anon* %42, i32 0, i32 0
  %44 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** %43, align 8
  store %struct.genmalloc_memory_entry* %44, %struct.genmalloc_memory_entry** %7, align 8
  br label %33, !llvm.loop !4

45:                                               ; preds = %33
  %46 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** %7, align 8
  %47 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 0
  %49 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** %48, align 8
  %50 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 0
  %52 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** %51, align 8
  %53 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** %7, align 8
  %54 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.anon, %struct.anon* %54, i32 0, i32 0
  store %struct.genmalloc_memory_entry* %52, %struct.genmalloc_memory_entry** %55, align 8
  br label %56

56:                                               ; preds = %45, %30
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** @genmalloc_memory_item, align 8
  %59 = bitcast %struct.genmalloc_memory_entry* %58 to i8*
  call void @free(i8* noundef %59) #3
  br label %66

60:                                               ; preds = %12
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** @genmalloc_memory_item, align 8
  %63 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %63, i32 0, i32 0
  %65 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** %64, align 8
  store %struct.genmalloc_memory_entry* %65, %struct.genmalloc_memory_entry** @genmalloc_memory_item, align 8
  br label %9, !llvm.loop !6

66:                                               ; preds = %57, %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8** @genmatrix_p(i32 noundef %0, i32 noundef %1, i64 noundef %2, i8* noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 8
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %12, align 8
  %18 = call noalias i8* @malloc(i64 noundef %17) #3
  %19 = bitcast i8* %18 to i8**
  store i8** %19, i8*** %11, align 8
  %20 = load i8**, i8*** %11, align 8
  %21 = bitcast i8** %20 to i8*
  %22 = load i64, i64* %12, align 8
  %23 = call i8* @genmalloc_memory_add_p(i8* noundef %21, i64 noundef %22, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 111)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %8, align 8
  %29 = mul i64 %27, %28
  store i64 %29, i64* %12, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %31, %33
  %35 = load i64, i64* %8, align 8
  %36 = call noalias i8* @calloc(i64 noundef %34, i64 noundef %35) #3
  %37 = load i8**, i8*** %11, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  store i8* %36, i8** %38, align 8
  %39 = load i8**, i8*** %11, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i8* @genmalloc_memory_add_p(i8* noundef %41, i64 noundef %42, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 115)
  store i32 1, i32* %13, align 4
  br label %44

44:                                               ; preds = %64, %5
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  %49 = load i8**, i8*** %11, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %49, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %8, align 8
  %58 = mul i64 %56, %57
  %59 = getelementptr i8, i8* %54, i64 %58
  %60 = load i8**, i8*** %11, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  store i8* %59, i8** %63, align 8
  br label %64

64:                                               ; preds = %48
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %44, !llvm.loop !7

67:                                               ; preds = %44
  %68 = load i8**, i8*** %11, align 8
  ret i8** %68
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @genmatrixfree_p(i8** noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8**, i8*** %4, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  call void @genmalloc_memory_remove_p(i8* noundef %9, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 129)
  %10 = load i8**, i8*** %4, align 8
  %11 = bitcast i8** %10 to i8*
  call void @genmalloc_memory_remove_p(i8* noundef %11, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 130)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8*** @gentrimatrix_p(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i8* noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8***, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i8*** null, i8**** %13, align 8
  %14 = load i64, i64* %10, align 8
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %16, label %24

16:                                               ; preds = %6
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i8*, i8** %11, align 8
  %21 = load i32, i32* %12, align 4
  %22 = call double*** @gentrimatrix_double_p(i32 noundef %17, i32 noundef %18, i32 noundef %19, i8* noundef %20, i32 noundef %21)
  %23 = bitcast double*** %22 to i8***
  store i8*** %23, i8**** %13, align 8
  br label %40

24:                                               ; preds = %6
  %25 = load i64, i64* %10, align 8
  %26 = icmp eq i64 %25, 4
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32*** @gentrimatrix_int_p(i32 noundef %28, i32 noundef %29, i32 noundef %30, i8* noundef %31, i32 noundef %32)
  %34 = bitcast i32*** %33 to i8***
  store i8*** %34, i8**** %13, align 8
  br label %39

35:                                               ; preds = %24
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i8* noundef %36, i32 noundef %37)
  br label %39

39:                                               ; preds = %35, %27
  br label %40

40:                                               ; preds = %39, %16
  %41 = load i8***, i8**** %13, align 8
  ret i8*** %41
}

; Function Attrs: noinline nounwind uwtable
define dso_local double*** @gentrimatrix_double_p(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double***, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i64 8, i64* %13, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = call noalias i8* @malloc(i64 noundef %20) #3
  %22 = bitcast i8* %21 to double***
  store double*** %22, double**** %11, align 8
  %23 = load double***, double**** %11, align 8
  %24 = bitcast double*** %23 to i8*
  %25 = load i64, i64* %12, align 8
  %26 = call i8* @genmalloc_memory_add_p(i8* noundef %24, i64 noundef %25, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 161)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 8
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call noalias i8* @malloc(i64 noundef %32) #3
  %34 = bitcast i8* %33 to double**
  %35 = load double***, double**** %11, align 8
  %36 = getelementptr inbounds double**, double*** %35, i64 0
  store double** %34, double*** %36, align 8
  %37 = load double***, double**** %11, align 8
  %38 = getelementptr inbounds double**, double*** %37, i64 0
  %39 = load double**, double*** %38, align 8
  %40 = bitcast double** %39 to i8*
  %41 = load i64, i64* %12, align 8
  %42 = call i8* @genmalloc_memory_add_p(i8* noundef %40, i64 noundef %41, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 165)
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* %8, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %14, align 8
  %50 = mul i64 %49, 8
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %14, align 8
  %52 = call noalias i8* @calloc(i64 noundef %51, i64 noundef 8) #3
  %53 = bitcast i8* %52 to double*
  %54 = load double***, double**** %11, align 8
  %55 = getelementptr inbounds double**, double*** %54, i64 0
  %56 = load double**, double*** %55, align 8
  %57 = getelementptr inbounds double*, double** %56, i64 0
  store double* %53, double** %57, align 8
  %58 = load double***, double**** %11, align 8
  %59 = getelementptr inbounds double**, double*** %58, i64 0
  %60 = load double**, double*** %59, align 8
  %61 = getelementptr inbounds double*, double** %60, i64 0
  %62 = load double*, double** %61, align 8
  %63 = bitcast double* %62 to i8*
  %64 = load i64, i64* %12, align 8
  %65 = call i8* @genmalloc_memory_add_p(i8* noundef %63, i64 noundef %64, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 170)
  store i32 0, i32* %15, align 4
  br label %66

66:                                               ; preds = %137, %5
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %140

70:                                               ; preds = %66
  %71 = load i32, i32* %15, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %106

73:                                               ; preds = %70
  %74 = load double***, double**** %11, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double**, double*** %74, i64 %77
  %79 = load double**, double*** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double*, double** %79, i64 %81
  %83 = load double***, double**** %11, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double**, double*** %83, i64 %85
  store double** %82, double*** %86, align 8
  %87 = load double***, double**** %11, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds double**, double*** %87, i64 %90
  %92 = load double**, double*** %91, align 8
  %93 = getelementptr inbounds double*, double** %92, i64 0
  %94 = load double*, double** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = mul nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, double* %94, i64 %98
  %100 = load double***, double**** %11, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds double**, double*** %100, i64 %102
  %104 = load double**, double*** %103, align 8
  %105 = getelementptr inbounds double*, double** %104, i64 0
  store double* %99, double** %105, align 8
  br label %106

106:                                              ; preds = %73, %70
  store i32 1, i32* %16, align 4
  br label %107

107:                                              ; preds = %133, %106
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %136

111:                                              ; preds = %107
  %112 = load double***, double**** %11, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds double**, double*** %112, i64 %114
  %116 = load double**, double*** %115, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds double*, double** %116, i64 %119
  %121 = load double*, double** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds double, double* %121, i64 %123
  %125 = load double***, double**** %11, align 8
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds double**, double*** %125, i64 %127
  %129 = load double**, double*** %128, align 8
  %130 = load i32, i32* %16, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds double*, double** %129, i64 %131
  store double* %124, double** %132, align 8
  br label %133

133:                                              ; preds = %111
  %134 = load i32, i32* %16, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %16, align 4
  br label %107, !llvm.loop !8

136:                                              ; preds = %107
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %15, align 4
  br label %66, !llvm.loop !9

140:                                              ; preds = %66
  %141 = load double***, double**** %11, align 8
  ret double*** %141
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32*** @gentrimatrix_int_p(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32***, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i64 4, i64* %13, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = call noalias i8* @malloc(i64 noundef %20) #3
  %22 = bitcast i8* %21 to i32***
  store i32*** %22, i32**** %11, align 8
  %23 = load i32***, i32**** %11, align 8
  %24 = bitcast i32*** %23 to i8*
  %25 = load i64, i64* %12, align 8
  %26 = call i8* @genmalloc_memory_add_p(i8* noundef %24, i64 noundef %25, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 200)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 8
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call noalias i8* @malloc(i64 noundef %32) #3
  %34 = bitcast i8* %33 to i32**
  %35 = load i32***, i32**** %11, align 8
  %36 = getelementptr inbounds i32**, i32*** %35, i64 0
  store i32** %34, i32*** %36, align 8
  %37 = load i32***, i32**** %11, align 8
  %38 = getelementptr inbounds i32**, i32*** %37, i64 0
  %39 = load i32**, i32*** %38, align 8
  %40 = bitcast i32** %39 to i8*
  %41 = load i64, i64* %12, align 8
  %42 = call i8* @genmalloc_memory_add_p(i8* noundef %40, i64 noundef %41, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 204)
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* %8, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %14, align 8
  %50 = mul i64 %49, 4
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %14, align 8
  %52 = call noalias i8* @calloc(i64 noundef %51, i64 noundef 4) #3
  %53 = bitcast i8* %52 to i32*
  %54 = load i32***, i32**** %11, align 8
  %55 = getelementptr inbounds i32**, i32*** %54, i64 0
  %56 = load i32**, i32*** %55, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  store i32* %53, i32** %57, align 8
  %58 = load i32***, i32**** %11, align 8
  %59 = getelementptr inbounds i32**, i32*** %58, i64 0
  %60 = load i32**, i32*** %59, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 0
  %62 = load i32*, i32** %61, align 8
  %63 = bitcast i32* %62 to i8*
  %64 = load i64, i64* %12, align 8
  %65 = call i8* @genmalloc_memory_add_p(i8* noundef %63, i64 noundef %64, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 209)
  store i32 0, i32* %15, align 4
  br label %66

66:                                               ; preds = %137, %5
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %140

70:                                               ; preds = %66
  %71 = load i32, i32* %15, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %106

73:                                               ; preds = %70
  %74 = load i32***, i32**** %11, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32**, i32*** %74, i64 %77
  %79 = load i32**, i32*** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  %83 = load i32***, i32**** %11, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32**, i32*** %83, i64 %85
  store i32** %82, i32*** %86, align 8
  %87 = load i32***, i32**** %11, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32**, i32*** %87, i64 %90
  %92 = load i32**, i32*** %91, align 8
  %93 = getelementptr inbounds i32*, i32** %92, i64 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = mul nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %94, i64 %98
  %100 = load i32***, i32**** %11, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32**, i32*** %100, i64 %102
  %104 = load i32**, i32*** %103, align 8
  %105 = getelementptr inbounds i32*, i32** %104, i64 0
  store i32* %99, i32** %105, align 8
  br label %106

106:                                              ; preds = %73, %70
  store i32 1, i32* %16, align 4
  br label %107

107:                                              ; preds = %133, %106
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %136

111:                                              ; preds = %107
  %112 = load i32***, i32**** %11, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32**, i32*** %112, i64 %114
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %116, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32***, i32**** %11, align 8
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32**, i32*** %125, i64 %127
  %129 = load i32**, i32*** %128, align 8
  %130 = load i32, i32* %16, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  store i32* %124, i32** %132, align 8
  br label %133

133:                                              ; preds = %111
  %134 = load i32, i32* %16, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %16, align 4
  br label %107, !llvm.loop !10

136:                                              ; preds = %107
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %15, align 4
  br label %66, !llvm.loop !11

140:                                              ; preds = %66
  %141 = load i32***, i32**** %11, align 8
  ret i32*** %141
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @gentrimatrixfree_p(i8*** noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8***, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8*** %0, i8**** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8***, i8**** %4, align 8
  %8 = getelementptr inbounds i8**, i8*** %7, i64 0
  %9 = load i8**, i8*** %8, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  call void @genmalloc_memory_remove_p(i8* noundef %11, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 233)
  %12 = load i8***, i8**** %4, align 8
  %13 = getelementptr inbounds i8**, i8*** %12, i64 0
  %14 = load i8**, i8*** %13, align 8
  %15 = bitcast i8** %14 to i8*
  call void @genmalloc_memory_remove_p(i8* noundef %15, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 234)
  %16 = load i8***, i8**** %4, align 8
  %17 = bitcast i8*** %16 to i8*
  call void @genmalloc_memory_remove_p(i8* noundef %17, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 235)
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @genmem_free_all_p(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %19, %2
  %6 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i32 0, i32 0), align 8
  %7 = icmp eq %struct.genmalloc_memory_entry* %6, null
  %8 = xor i1 %7, true
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i32 0, i32 0), align 8
  store %struct.genmalloc_memory_entry* %10, %struct.genmalloc_memory_entry** @genmalloc_memory_item, align 8
  %11 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** @genmalloc_memory_item, align 8
  %12 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  call void @free(i8* noundef %13) #3
  br label %14

14:                                               ; preds = %9
  %15 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i32 0, i32 0), align 8
  %16 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 0
  %18 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** %17, align 8
  store %struct.genmalloc_memory_entry* %18, %struct.genmalloc_memory_entry** getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i32 0, i32 0), align 8
  br label %19

19:                                               ; preds = %14
  %20 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** @genmalloc_memory_item, align 8
  %21 = bitcast %struct.genmalloc_memory_entry* %20 to i8*
  call void @free(i8* noundef %21) #3
  br label %5, !llvm.loop !12

22:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!12 = distinct !{!12, !5}
