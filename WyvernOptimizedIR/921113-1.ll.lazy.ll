; ModuleID = './921113-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/921113-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_t = type { float, float }
%struct.struct_list = type { float }

@pos = dso_local global [1 x %struct.vector_t] zeroinitializer, align 4
@limit = dso_local global [2 x %struct.vector_t] [%struct.vector_t zeroinitializer, %struct.vector_t { float 1.000000e+00, float 1.000000e+00 }], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @w(float noundef %0, float noundef %1) #0 {
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f1(float noundef %0, float noundef %1) #1 {
  %3 = fcmp une float %0, 0.000000e+00
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = fcmp une float %1, 0.000000e+00
  br i1 %5, label %6, label %7

6:                                                ; preds = %4, %2
  call void @abort() #4
  unreachable

7:                                                ; preds = %4
  ret i32 undef
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f2(float noundef %0, float noundef %1) #1 {
  %3 = fcmp une float %0, 1.000000e+00
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = fcmp une float %1, 1.000000e+00
  br i1 %5, label %6, label %7

6:                                                ; preds = %4, %2
  call void @abort() #4
  unreachable

7:                                                ; preds = %4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gitter(i32 noundef %0, %struct.vector_t* nocapture noundef readonly %1, %struct.struct_list* nocapture noundef writeonly %2, i32* nocapture noundef writeonly %3, %struct.vector_t* nocapture noundef readonly %4, float noundef %5) #1 {
  %7 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %4, i64 0, i32 0
  %8 = load float, float* %7, align 4
  %9 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %4, i64 0, i32 1
  %10 = load float, float* %9, align 4
  %11 = call i32 @f1(float noundef %8, float noundef %10)
  %12 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %4, i64 1, i32 0
  %13 = load float, float* %12, align 4
  %14 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %4, i64 1, i32 1
  %15 = load float, float* %14, align 4
  %16 = call i32 @f2(float noundef %13, float noundef %15)
  store i32 0, i32* %3, align 4
  %17 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %1, i64 0, i32 0
  %18 = load float, float* %17, align 4
  %19 = fcmp ugt float %18, 0.000000e+00
  br i1 %19, label %28, label %20

20:                                               ; preds = %6
  %21 = fpext float %18 to double
  %22 = fpext float %5 to double
  %23 = fmul double %22, 5.000000e-01
  %24 = fcmp ult double %23, %21
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.struct_list, %struct.struct_list* %2, i64 0, i32 0
  store float 1.000000e+00, float* %26, align 4
  br label %27

27:                                               ; preds = %25, %20
  br label %28

28:                                               ; preds = %27, %6
  ret i32 undef
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.struct_list, align 4
  %3 = call i32 @gitter(i32 noundef 1, %struct.vector_t* noundef getelementptr inbounds ([1 x %struct.vector_t], [1 x %struct.vector_t]* @pos, i64 0, i64 0), %struct.struct_list* noundef nonnull %2, i32* noundef nonnull %1, %struct.vector_t* noundef getelementptr inbounds ([2 x %struct.vector_t], [2 x %struct.vector_t]* @limit, i64 0, i64 0), float noundef 1.000000e+00)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
