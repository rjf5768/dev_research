; ModuleID = './2020-01-06-coverage-006.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-006.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { [9 x i8] }

@b = dso_local global %struct.s zeroinitializer, align 8
@c = dso_local global i32 0, align 4
@x = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"b.a = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"c = %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"x = %i\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define dso_local void @d() #0 {
  %1 = load i72, i72* bitcast (%struct.s* @b to i72*), align 8
  %2 = and i72 %1, 1180591585533039214592
  %3 = icmp ugt i72 %2, 281474976710656
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load volatile i32, i32* @c, align 4
  store i32 %5, i32* @x, align 4
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  store i32 0, i32* @x, align 4
  store volatile i32 0, i32* @c, align 4
  %1 = load i72, i72* bitcast (%struct.s* @b to i72*), align 8
  %2 = and i72 %1, -1180591585533039214593
  %3 = or i72 %2, 73786976294838206464
  store i72 %3, i72* bitcast (%struct.s* @b to i72*), align 8
  call void @d()
  %4 = load i72, i72* bitcast (%struct.s* @b to i72*), align 8
  %5 = lshr i72 %4, 45
  %6 = trunc i72 %5 to i32
  %7 = and i32 %6, 33554431
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef %7) #3
  %9 = load volatile i32, i32* @c, align 4
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef %9) #3
  %11 = load i32, i32* @x, align 4
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef %11) #3
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
