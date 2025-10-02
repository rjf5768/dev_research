; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/bison/symtab.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/bison/symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bucket = type { %struct.bucket*, %struct.bucket*, i8*, i8*, i16, i16, i16, i16, i8 }

@symtab = dso_local global %struct.bucket** null, align 8
@firstsymbol = dso_local global %struct.bucket* null, align 8
@lastsymbol = dso_local global %struct.bucket* null, align 8
@nsyms = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hash(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  store i8* %5, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %1
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = shl i32 %11, 1
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %3, align 8
  %15 = load i8, i8* %13, align 1
  %16 = sext i8 %15 to i32
  %17 = xor i32 %12, %16
  %18 = and i32 %17, 16383
  store i32 %18, i32* %4, align 4
  br label %6, !llvm.loop !4

19:                                               ; preds = %6
  %20 = load i32, i32* %4, align 4
  %21 = srem i32 %20, 1009
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @copys(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 1, i32* %3, align 4
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** %4, align 8
  br label %7

7:                                                ; preds = %14, %1
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %4, align 8
  br label %7, !llvm.loop !6

17:                                               ; preds = %7
  %18 = load i32, i32* %3, align 4
  %19 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %18)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = call i8* @strcpy(i8* noundef %20, i8* noundef %21)
  %23 = load i8*, i8** %5, align 8
  ret i8* %23
}

declare dso_local i8* @mallocate(...) #1

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @tabinit() #0 {
  %1 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef 8072)
  %2 = bitcast i8* %1 to %struct.bucket**
  store %struct.bucket** %2, %struct.bucket*** @symtab, align 8
  store %struct.bucket* null, %struct.bucket** @firstsymbol, align 8
  store %struct.bucket* null, %struct.bucket** @lastsymbol, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.bucket* @getsym(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bucket*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @hash(i8* noundef %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.bucket**, %struct.bucket*** @symtab, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.bucket*, %struct.bucket** %8, i64 %10
  %12 = load %struct.bucket*, %struct.bucket** %11, align 8
  store %struct.bucket* %12, %struct.bucket** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %33, %1
  %14 = load %struct.bucket*, %struct.bucket** %4, align 8
  %15 = icmp ne %struct.bucket* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i1 [ false, %13 ], [ %18, %16 ]
  br i1 %20, label %21, label %34

21:                                               ; preds = %19
  %22 = load i8*, i8** %2, align 8
  %23 = load %struct.bucket*, %struct.bucket** %4, align 8
  %24 = getelementptr inbounds %struct.bucket, %struct.bucket* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strcmp(i8* noundef %22, i8* noundef %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %33

29:                                               ; preds = %21
  %30 = load %struct.bucket*, %struct.bucket** %4, align 8
  %31 = getelementptr inbounds %struct.bucket, %struct.bucket* %30, i32 0, i32 0
  %32 = load %struct.bucket*, %struct.bucket** %31, align 8
  store %struct.bucket* %32, %struct.bucket** %4, align 8
  br label %33

33:                                               ; preds = %29, %28
  br label %13, !llvm.loop !7

34:                                               ; preds = %19
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %73

37:                                               ; preds = %34
  %38 = load i32, i32* @nsyms, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @nsyms, align 4
  %40 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef 48)
  %41 = bitcast i8* %40 to %struct.bucket*
  store %struct.bucket* %41, %struct.bucket** %4, align 8
  %42 = load %struct.bucket**, %struct.bucket*** @symtab, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.bucket*, %struct.bucket** %42, i64 %44
  %46 = load %struct.bucket*, %struct.bucket** %45, align 8
  %47 = load %struct.bucket*, %struct.bucket** %4, align 8
  %48 = getelementptr inbounds %struct.bucket, %struct.bucket* %47, i32 0, i32 0
  store %struct.bucket* %46, %struct.bucket** %48, align 8
  %49 = load %struct.bucket*, %struct.bucket** %4, align 8
  %50 = getelementptr inbounds %struct.bucket, %struct.bucket* %49, i32 0, i32 1
  store %struct.bucket* null, %struct.bucket** %50, align 8
  %51 = load i8*, i8** %2, align 8
  %52 = call i8* @copys(i8* noundef %51)
  %53 = load %struct.bucket*, %struct.bucket** %4, align 8
  %54 = getelementptr inbounds %struct.bucket, %struct.bucket* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.bucket*, %struct.bucket** %4, align 8
  %56 = getelementptr inbounds %struct.bucket, %struct.bucket* %55, i32 0, i32 8
  store i8 0, i8* %56, align 8
  %57 = load %struct.bucket*, %struct.bucket** @firstsymbol, align 8
  %58 = icmp eq %struct.bucket* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %37
  %60 = load %struct.bucket*, %struct.bucket** %4, align 8
  store %struct.bucket* %60, %struct.bucket** @firstsymbol, align 8
  %61 = load %struct.bucket*, %struct.bucket** %4, align 8
  store %struct.bucket* %61, %struct.bucket** @lastsymbol, align 8
  br label %67

62:                                               ; preds = %37
  %63 = load %struct.bucket*, %struct.bucket** %4, align 8
  %64 = load %struct.bucket*, %struct.bucket** @lastsymbol, align 8
  %65 = getelementptr inbounds %struct.bucket, %struct.bucket* %64, i32 0, i32 1
  store %struct.bucket* %63, %struct.bucket** %65, align 8
  %66 = load %struct.bucket*, %struct.bucket** %4, align 8
  store %struct.bucket* %66, %struct.bucket** @lastsymbol, align 8
  br label %67

67:                                               ; preds = %62, %59
  %68 = load %struct.bucket*, %struct.bucket** %4, align 8
  %69 = load %struct.bucket**, %struct.bucket*** @symtab, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.bucket*, %struct.bucket** %69, i64 %71
  store %struct.bucket* %68, %struct.bucket** %72, align 8
  br label %73

73:                                               ; preds = %67, %34
  %74 = load %struct.bucket*, %struct.bucket** %4, align 8
  ret %struct.bucket* %74
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_symtab() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bucket*, align 8
  %3 = alloca %struct.bucket*, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %28, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 1009
  br i1 %6, label %7, label %31

7:                                                ; preds = %4
  %8 = load %struct.bucket**, %struct.bucket*** @symtab, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.bucket*, %struct.bucket** %8, i64 %10
  %12 = load %struct.bucket*, %struct.bucket** %11, align 8
  store %struct.bucket* %12, %struct.bucket** %2, align 8
  br label %13

13:                                               ; preds = %25, %7
  %14 = load %struct.bucket*, %struct.bucket** %2, align 8
  %15 = icmp ne %struct.bucket* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load %struct.bucket*, %struct.bucket** %2, align 8
  %18 = getelementptr inbounds %struct.bucket, %struct.bucket* %17, i32 0, i32 0
  %19 = load %struct.bucket*, %struct.bucket** %18, align 8
  store %struct.bucket* %19, %struct.bucket** %3, align 8
  %20 = load %struct.bucket*, %struct.bucket** %2, align 8
  %21 = icmp ne %struct.bucket* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.bucket*, %struct.bucket** %2, align 8
  %24 = bitcast %struct.bucket* %23 to i8*
  call void @free(i8* noundef %24) #3
  br label %25

25:                                               ; preds = %22, %16
  %26 = load %struct.bucket*, %struct.bucket** %3, align 8
  store %struct.bucket* %26, %struct.bucket** %2, align 8
  br label %13, !llvm.loop !8

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %4, !llvm.loop !9

31:                                               ; preds = %4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
