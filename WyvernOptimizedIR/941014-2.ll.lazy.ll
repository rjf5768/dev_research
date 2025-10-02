; ModuleID = './941014-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/941014-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo_t = type { i16, i16 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @a1(i64 noundef %0) #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.foo_t* @f() #1 {
  %1 = call noalias dereferenceable_or_null(4) i8* @malloc(i64 noundef 4) #6
  %2 = bitcast i8* %1 to %struct.foo_t*
  %3 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %2, i64 0, i32 0
  %4 = load volatile i16, i16* %3, align 2
  %.not = icmp ult i16 %4, 4096
  br i1 %.not, label %10, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %2, i64 0, i32 0
  %7 = load volatile i16, i16* %6, align 2
  %8 = zext i16 %7 to i32
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %8) #6
  br label %10

10:                                               ; preds = %5, %0
  %11 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %2, i64 0, i32 1
  store volatile i16 256, i16* %11, align 2
  ret %struct.foo_t* %2
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #4 {
  %1 = call %struct.foo_t* @f()
  %2 = getelementptr inbounds %struct.foo_t, %struct.foo_t* %1, i64 0, i32 1
  %3 = load volatile i16, i16* %2, align 2
  %.not = icmp eq i16 %3, 256
  br i1 %.not, label %5, label %4

4:                                                ; preds = %0
  call void @abort() #7
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %0
  call void @exit(i32 noundef 0) #7
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %5, %4
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
