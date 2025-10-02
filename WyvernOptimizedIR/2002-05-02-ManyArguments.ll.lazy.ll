; ModuleID = './2002-05-02-ManyArguments.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2002-05-02-ManyArguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"%d, %d, %f, %f, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%d, %ld, %ld, %d, %lld\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @printfn(i32 noundef %0, i16 noundef signext %1, double noundef %2, float noundef %3, i8 noundef signext %4, i8 noundef signext %5, i8* noundef %6, double* noundef %7, i32 noundef %8, i64 noundef %9) #0 {
  %11 = sext i16 %1 to i32
  %12 = fpext float %3 to double
  %13 = sext i8 %4 to i32
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef %0, i32 noundef %11, double noundef %2, double noundef %12, i32 noundef %13) #2
  %15 = sext i8 %5 to i32
  %16 = ptrtoint i8* %6 to i64
  %17 = ptrtoint double* %7 to i64
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef %15, i64 noundef %16, i64 noundef %17, i32 noundef %8, i64 noundef %9) #2
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @printfn(i32 noundef 12, i16 noundef signext 2, double noundef 1.232340e+02, float noundef 0x40933C7E20000000, i8 noundef signext -12, i8 noundef signext 23, i8* noundef nonnull inttoptr (i64 123456 to i8*), double* noundef null, i32 noundef 1234567, i64 noundef 123124124124)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
