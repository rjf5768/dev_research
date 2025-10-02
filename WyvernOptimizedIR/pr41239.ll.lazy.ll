; ModuleID = './pr41239.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr41239.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i16, [2 x i64] }

@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@__func__.test = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"division by zero\00", align 1
@__const.main.s = private unnamed_addr constant %struct.S { i16 2, [2 x i64] [i64 5, i64 0] }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @test(%struct.S* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1, i64 0
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = call signext i8 @fn1(i32 noundef 20, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef 924, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.test, i64 0, i64 0), i8* noundef null)
  %.not = icmp eq i8 %8, 0
  br i1 %.not, label %12, label %9

9:                                                ; preds = %7
  %10 = call i32 @fn3(i32 noundef 33816706)
  %11 = call i32 (i8*, ...) @fn4(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  call void (i32, ...) @fn2(i32 noundef %10, i32 noundef %11)
  br label %13

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12, %9
  br label %14

14:                                               ; preds = %13, %1
  %sext = shl i64 %3, 32
  %15 = ashr exact i64 %sext, 32
  %16 = sdiv i64 %15, %5
  ret i64 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @fn1(i32 noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4) #0 {
  call void asm sideeffect "", "r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %3, i8* %4) #4, !srcloc !4
  %6 = call i32 asm sideeffect "", "=r,r,r,0,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %1, i32 %2, i32 %0) #4, !srcloc !5
  %7 = trunc i32 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fn2(i32 noundef %0, ...) #0 {
  %2 = call i32 asm sideeffect "", "=r,0,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0) #4, !srcloc !6
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  call void @exit(i32 noundef 0) #5
  unreachable

4:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fn3(i32 noundef %0) #0 {
  %2 = call i32 asm sideeffect "", "=r,0,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0) #4, !srcloc !7
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fn4(i8* noundef %0, ...) #0 {
  %2 = call i8* asm sideeffect "", "=r,0,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %0) #4, !srcloc !8
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %struct.S, align 8
  %2 = bitcast %struct.S* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %2, i8* noundef nonnull align 8 dereferenceable(24) bitcast (%struct.S* @__const.main.s to i8*), i64 24, i1 false)
  %3 = call i64 @test(%struct.S* noundef nonnull %1)
  call void @abort() #5
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 805}
!5 = !{i64 858}
!6 = !{i64 1207}
!7 = !{i64 979}
!8 = !{i64 1096}
