; ModuleID = './compndlit-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/compndlit-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32 }

@x = dso_local global { i8, i8, i8, i8 } { i8 25, i8 0, i8 0, i8 0 }, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.S, align 4
  %2 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0
  %3 = load i32, i32* %2, align 4
  %4 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0
  %5 = and i32 %3, -16
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0
  %7 = load i32, i32* bitcast ({ i8, i8, i8, i8 }* @x to i32*), align 4
  %.mask = and i32 %7, 7
  %8 = icmp eq i32 %.mask, 1
  %9 = select i1 %8, i32 160, i32 320
  store i32 %9, i32* %6, align 4
  store i32 %9, i32* bitcast ({ i8, i8, i8, i8 }* @x to i32*), align 4
  br i1 %8, label %11, label %10

10:                                               ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %0
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %11, %10
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
