; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr44852.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr44852.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.s = private unnamed_addr constant [7 x i8] c"999999\00", align 1
@.str = private unnamed_addr constant [7 x i8] c"199999\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sf(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !4
  br label %5

5:                                                ; preds = %17, %2
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds i8, i8* %6, i32 -1
  store i8* %7, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 57
  br i1 %10, label %11, label %18

11:                                               ; preds = %5
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp eq i8* %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i8*, i8** %3, align 8
  store i8 48, i8* %16, align 1
  br label %18

17:                                               ; preds = %11
  br label %5, !llvm.loop !5

18:                                               ; preds = %15, %5
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %3, align 8
  %21 = load i8, i8* %19, align 1
  %22 = add i8 %21, 1
  store i8 %22, i8* %19, align 1
  %23 = load i8*, i8** %3, align 8
  ret i8* %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [7 x i8], align 1
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %4 = bitcast [7 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main.s, i32 0, i32 0), i64 7, i1 false)
  %5 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 0, i64 0
  %6 = getelementptr inbounds i8, i8* %5, i64 2
  %7 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 0, i64 0
  %8 = call i8* @sf(i8* noundef %6, i8* noundef %7)
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 0, i64 0
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  %12 = icmp ne i8* %9, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %0
  %14 = getelementptr inbounds [7 x i8], [7 x i8]* %2, i64 0, i64 0
  %15 = call i32 @strcmp(i8* noundef %14, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %0
  call void @abort() #5
  unreachable

18:                                               ; preds = %13
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 70}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
