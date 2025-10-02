; ModuleID = './20100316-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20100316-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Foo = type { i32, i16 }

@f = dso_local global %struct.Foo zeroinitializer, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @foo(%struct.Foo* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.Foo, %struct.Foo* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 4
  %4 = and i16 %3, 1023
  %5 = zext i16 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  store i32 -1, i32* getelementptr inbounds (%struct.Foo, %struct.Foo* @f, i64 0, i32 0), align 4
  %1 = load i16, i16* getelementptr inbounds (%struct.Foo, %struct.Foo* @f, i64 0, i32 1), align 4
  %2 = and i16 %1, -8192
  %3 = or i16 %2, 7168
  store i16 %3, i16* getelementptr inbounds (%struct.Foo, %struct.Foo* @f, i64 0, i32 1), align 4
  %4 = call i32 @foo(%struct.Foo* noundef nonnull @f)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %6, label %5

5:                                                ; preds = %0
  call void @abort() #3
  unreachable

6:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
