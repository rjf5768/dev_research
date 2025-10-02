; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57344-3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57344-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [9 x i8], i8, [6 x i8] }

@__const.main.t = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8] } { i8 0, i8 0, i8 0, i8 0, i8 0, i8 56, i8 -99, i8 -1, i8 1, i8 0, [6 x i8] undef }, align 1
@s = dso_local global [2 x %struct.S] zeroinitializer, align 16
@i = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, -3161
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @abort() #3
  unreachable

6:                                                ; preds = %1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !4
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S, align 1
  store i32 0, i32* %1, align 4
  %3 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8] }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8] }* @__const.main.t, i32 0, i32 0), i64 16, i1 false)
  %4 = bitcast %struct.S* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([2 x %struct.S], [2 x %struct.S]* @s, i64 0, i64 1, i32 0, i32 0), i8* align 1 %4, i64 16, i1 false)
  br label %5

5:                                                ; preds = %13, %0
  %6 = load i32, i32* @i, align 4
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load i72, i72* bitcast (%struct.S* getelementptr inbounds ([2 x %struct.S], [2 x %struct.S]* @s, i64 0, i64 1) to i72*), align 16
  %10 = shl i72 %9, 7
  %11 = ashr i72 %10, 50
  %12 = trunc i72 %11 to i64
  call void @foo(i64 noundef %12)
  br label %13

13:                                               ; preds = %8
  %14 = load i32, i32* @i, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @i, align 4
  br label %5, !llvm.loop !5

16:                                               ; preds = %5
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 283}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
