; ModuleID = './20000223-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000223-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"signed short\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"signed int\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"signed long\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"signed long long\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"unsigned long long\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"void *\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"void (*)()\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"struct A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @check(i8* nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = call i32 @llvm.ctpop.i32(i32 %1), !range !4
  %.not = icmp ult i32 %3, 2
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  call void @abort() #3
  unreachable

5:                                                ; preds = %2
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @check(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef 1)
  call void @check(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1)
  call void @check(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 2)
  call void @check(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef 2)
  call void @check(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 noundef 4)
  call void @check(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 noundef 4)
  call void @check(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 noundef 8)
  call void @check(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 noundef 8)
  call void @check(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 noundef 8)
  call void @check(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 noundef 8)
  call void @check(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 noundef 4)
  call void @check(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 noundef 8)
  call void @check(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 noundef 16)
  call void @check(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 noundef 8)
  call void @check(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 noundef 8)
  call void @check(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 noundef 16)
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i32 0, i32 33}
