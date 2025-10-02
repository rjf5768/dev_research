; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/alias-access-path-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/alias-access-path-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a = type { i32 }
%struct.c = type { %struct.b }
%struct.b = type { %struct.a }

@a = dso_local global %struct.a { i32 1 }, align 4
@val = dso_local global i32 0, align 4
@cptr = dso_local global %struct.c* bitcast (i32* @val to %struct.c*), align 8
@a2 = dso_local global %struct.a zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load %struct.c*, %struct.c** @cptr, align 8
  %2 = getelementptr inbounds %struct.c, %struct.c* %1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.b, %struct.b* %2, i32 0, i32 0
  %4 = bitcast %struct.a* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.a* @a to i8*), i64 4, i1 false)
  store i32 2, i32* @val, align 4
  %5 = load %struct.c*, %struct.c** @cptr, align 8
  %6 = getelementptr inbounds %struct.c, %struct.c* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.b, %struct.b* %6, i32 0, i32 0
  %8 = bitcast %struct.a* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.a* @a2 to i8*), i8* align 4 %8, i64 4, i1 false)
  %9 = load i32, i32* getelementptr inbounds (%struct.a, %struct.a* @a2, i32 0, i32 0), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.a, %struct.a* @a, i32 0, i32 0), align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  call void @abort() #3
  unreachable

13:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
