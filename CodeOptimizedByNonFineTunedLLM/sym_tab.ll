; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/simulator/sym_tab.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/simulator/sym_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @INIT_SYM_TAB(%struct.SYMBOL_TABLE_ENTRY** noundef %0) #0 {
  %2 = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %0, %struct.SYMBOL_TABLE_ENTRY*** %2, align 8
  %3 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %2, align 8
  store %struct.SYMBOL_TABLE_ENTRY* null, %struct.SYMBOL_TABLE_ENTRY** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.SYMBOL_TABLE_ENTRY* @LOOK_UP_SYMBOL(i8* noundef %0, i8* noundef %1, %struct.SYMBOL_TABLE_ENTRY** noundef %2) #0 {
  %4 = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %8 = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %2, %struct.SYMBOL_TABLE_ENTRY*** %7, align 8
  %9 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %7, align 8
  %10 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %9, align 8
  store %struct.SYMBOL_TABLE_ENTRY* %10, %struct.SYMBOL_TABLE_ENTRY** %8, align 8
  br label %11

11:                                               ; preds = %30, %3
  %12 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %8, align 8
  %13 = icmp ne %struct.SYMBOL_TABLE_ENTRY* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  %15 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %8, align 8
  %16 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %15, i32 0, i32 1
  %17 = getelementptr inbounds [9 x i8], [9 x i8]* %16, i64 0, i64 0
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strcmp(i8* noundef %17, i8* noundef %18) #3
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %14
  %22 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %8, align 8
  %23 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %22, i32 0, i32 0
  %24 = getelementptr inbounds [9 x i8], [9 x i8]* %23, i64 0, i64 0
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strcmp(i8* noundef %24, i8* noundef %25) #3
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %8, align 8
  store %struct.SYMBOL_TABLE_ENTRY* %29, %struct.SYMBOL_TABLE_ENTRY** %4, align 8
  br label %35

30:                                               ; preds = %21, %14
  %31 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %8, align 8
  %32 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %31, i32 0, i32 5
  %33 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %32, align 8
  store %struct.SYMBOL_TABLE_ENTRY* %33, %struct.SYMBOL_TABLE_ENTRY** %8, align 8
  br label %11, !llvm.loop !4

34:                                               ; preds = %11
  store %struct.SYMBOL_TABLE_ENTRY* null, %struct.SYMBOL_TABLE_ENTRY** %4, align 8
  br label %35

35:                                               ; preds = %34, %28
  %36 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %4, align 8
  ret %struct.SYMBOL_TABLE_ENTRY* %36
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @INSERT_IN_SYM_TAB(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, %struct.SYMBOL_TABLE_ENTRY** noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %12 = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.SYMBOL_TABLE_ENTRY** %4, %struct.SYMBOL_TABLE_ENTRY*** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %11, align 8
  %16 = call %struct.SYMBOL_TABLE_ENTRY* @LOOK_UP_SYMBOL(i8* noundef %13, i8* noundef %14, %struct.SYMBOL_TABLE_ENTRY** noundef %15)
  store %struct.SYMBOL_TABLE_ENTRY* %16, %struct.SYMBOL_TABLE_ENTRY** %12, align 8
  %17 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %12, align 8
  %18 = icmp eq %struct.SYMBOL_TABLE_ENTRY* %17, null
  br i1 %18, label %19, label %46

19:                                               ; preds = %5
  %20 = call noalias i8* @malloc(i64 noundef 40) #4
  %21 = bitcast i8* %20 to %struct.SYMBOL_TABLE_ENTRY*
  store %struct.SYMBOL_TABLE_ENTRY* %21, %struct.SYMBOL_TABLE_ENTRY** %12, align 8
  %22 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %11, align 8
  %23 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %22, align 8
  %24 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %12, align 8
  %25 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %24, i32 0, i32 5
  store %struct.SYMBOL_TABLE_ENTRY* %23, %struct.SYMBOL_TABLE_ENTRY** %25, align 8
  %26 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %12, align 8
  %27 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %26, i32 0, i32 1
  %28 = getelementptr inbounds [9 x i8], [9 x i8]* %27, i64 0, i64 0
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @strcpy(i8* noundef %28, i8* noundef %29) #4
  %31 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %12, align 8
  %32 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %31, i32 0, i32 0
  %33 = getelementptr inbounds [9 x i8], [9 x i8]* %32, i64 0, i64 0
  %34 = load i8*, i8** %8, align 8
  %35 = call i8* @strcpy(i8* noundef %33, i8* noundef %34) #4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %12, align 8
  %38 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %12, align 8
  %40 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %39, i32 0, i32 3
  store i32 0, i32* %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %12, align 8
  %43 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %12, align 8
  %45 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %11, align 8
  store %struct.SYMBOL_TABLE_ENTRY* %44, %struct.SYMBOL_TABLE_ENTRY** %45, align 8
  store i32 1, i32* %6, align 4
  br label %47

46:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %46, %19
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
