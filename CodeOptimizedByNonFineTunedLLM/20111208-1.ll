; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20111208-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20111208-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i16 }
%union.anon.0 = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"\80\01\FF\FE\1D\C0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"sl\00", align 1
@a = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pack_unpack(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %union.anon, align 2
  %10 = alloca %union.anon.0, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @strlen(i8* noundef %12) #4
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @strlen(i8* noundef %16) #4
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8* %18, i8** %6, align 8
  br label %19

19:                                               ; preds = %51, %2
  %20 = load i8*, i8** %4, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %4, align 8
  %26 = load i8, i8* %24, align 1
  store i8 %26, i8* %7, align 1
  %27 = load i8, i8* %7, align 1
  %28 = sext i8 %27 to i32
  switch i32 %28, label %51 [
    i32 115, label %29
    i32 108, label %30
  ]

29:                                               ; preds = %23
  store i32 2, i32* %8, align 4
  br label %31

30:                                               ; preds = %23
  store i32 4, i32* %8, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32, i32* %8, align 4
  switch i32 %32, label %50 [
    i32 2, label %33
    i32 4, label %42
  ]

33:                                               ; preds = %31
  %34 = bitcast %union.anon* %9 to [2 x i8]*
  %35 = getelementptr inbounds [2 x i8], [2 x i8]* %34, i64 0, i64 0
  %36 = load i8*, i8** %3, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %35, i8* align 1 %36, i64 2, i1 false)
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  store i8* %38, i8** %3, align 8
  %39 = bitcast %union.anon* %9 to i16*
  %40 = load i16, i16* %39, align 2
  %41 = sext i16 %40 to i32
  call void @do_something(i32 noundef %41)
  br label %50

42:                                               ; preds = %31
  %43 = bitcast %union.anon.0* %10 to [4 x i8]*
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %43, i64 0, i64 0
  %45 = load i8*, i8** %3, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 1 %45, i64 4, i1 false)
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 4
  store i8* %47, i8** %3, align 8
  %48 = bitcast %union.anon.0* %10 to i32*
  %49 = load i32, i32* %48, align 4
  call void @do_something(i32 noundef %49)
  br label %50

50:                                               ; preds = %31, %42, %33
  br label %51

51:                                               ; preds = %23, %50
  br label %19, !llvm.loop !4

52:                                               ; preds = %19
  %53 = load i8*, i8** %3, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  ret i32 %55
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @do_something(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @a, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 @pack_unpack(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #5
  unreachable

7:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
