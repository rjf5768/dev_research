; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/map.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@map.userbuf = internal global [4096 x i8] zeroinitializer, align 16
@map.userz = internal global i8* null, align 8
@map.hostbuf = internal global [4096 x i8] zeroinitializer, align 16
@map.hostz = internal global i8* null, align 8
@queuecost = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @map(i32 noundef %0, i8** noundef %1, i8** noundef %2, i8** noundef %3, i32* noundef %4, i32* noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @map.userbuf, i64 0, i64 0), i8** @map.userz, align 8
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @map.hostbuf, i64 0, i64 0), i8** @map.hostz, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %76, %6
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %79

20:                                               ; preds = %16
  %21 = load i32, i32* @queuecost, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %14, align 4
  %23 = load i8*, i8** @map.userz, align 8
  %24 = load i8**, i8*** %10, align 8
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  store i8* %23, i8** %27, align 8
  %28 = load i8*, i8** @map.hostz, align 8
  %29 = load i8**, i8*** %9, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  store i8* %28, i8** %32, align 8
  %33 = load i8**, i8*** %8, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 40
  br i1 %37, label %38, label %50

38:                                               ; preds = %20
  %39 = load i8**, i8*** %8, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %39, align 8
  %42 = load i8**, i8*** %8, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @strchr(i8* noundef %43, i32 noundef 41) #3
  store i8* %44, i8** %15, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i8*, i8** %15, align 8
  store i8 0, i8* %48, align 1
  br label %49

49:                                               ; preds = %47, %38
  br label %50

50:                                               ; preds = %49, %20
  %51 = load i8**, i8*** %8, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %52, i8*** %8, align 8
  %53 = load i8*, i8** %51, align 8
  %54 = load i8*, i8** @map.hostz, align 8
  %55 = load i8*, i8** @map.userz, align 8
  %56 = call i32 (i8*, i8*, i8*, i32*, ...) bitcast (i32 (...)* @resolve to i32 (i8*, i8*, i8*, i32*, ...)*)(i8* noundef %53, i8* noundef %54, i8* noundef %55, i32* noundef %14)
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %61, i32* %65, align 4
  %66 = load i8*, i8** @map.userz, align 8
  %67 = call i64 @strlen(i8* noundef %66) #3
  %68 = add i64 %67, 1
  %69 = load i8*, i8** @map.userz, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 %68
  store i8* %70, i8** @map.userz, align 8
  %71 = load i8*, i8** @map.hostz, align 8
  %72 = call i64 @strlen(i8* noundef %71) #3
  %73 = add i64 %72, 1
  %74 = load i8*, i8** @map.hostz, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 %73
  store i8* %75, i8** @map.hostz, align 8
  br label %76

76:                                               ; preds = %50
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %16, !llvm.loop !4

79:                                               ; preds = %16
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #1

declare dso_local i32 @resolve(...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
