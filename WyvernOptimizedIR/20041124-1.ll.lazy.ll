; ModuleID = './20041124-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20041124-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { { i16, i16 } }

@gs = dso_local global %struct.s { { i16, i16 } { i16 100, i16 200 } }, align 4

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @foo() #0 {
  %1 = load i32, i32* bitcast (%struct.s* @gs to i32*), align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca i32, align 4
  %2 = call i32 @foo()
  store i32 %2, i32* %1, align 4
  %3 = bitcast i32* %1 to { i16, i16 }*
  %4 = bitcast i32* %1 to i16*
  %5 = load i16, i16* %4, align 4
  %6 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %3, i64 0, i32 1
  %7 = load i16, i16* %6, align 2
  %8 = load i16, i16* getelementptr inbounds (%struct.s, %struct.s* @gs, i64 0, i32 0, i32 0), align 4
  %9 = load i16, i16* getelementptr inbounds (%struct.s, %struct.s* @gs, i64 0, i32 0, i32 1), align 2
  %10 = icmp ne i16 %5, %8
  %11 = icmp ne i16 %7, %9
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %0
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %14, %13
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
