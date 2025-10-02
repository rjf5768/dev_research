; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960117-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960117-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T_VAL = type <{ i16, %union.T_VALS }>
%union.T_VALS = type { i8* }

@curval = dso_local global %struct.T_VAL zeroinitializer, align 2
@id_space = internal global [2 x [33 x i8]] zeroinitializer, align 16
@idc = internal global i16 0, align 2
@cur_line = internal global i32 0, align 4
@char_pos = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @get_id(i8 noundef signext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = load i8*, i8** getelementptr inbounds (%struct.T_VAL, %struct.T_VAL* @curval, i32 0, i32 1, i32 0), align 2
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  store i8 %4, i8* %6, align 1
  %7 = load i16, i16* %2, align 2
  ret i16 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @get_tok() #0 {
  %1 = alloca i8, align 1
  store i8 99, i8* %1, align 1
  %2 = load i16, i16* @idc, align 2
  %3 = sext i16 %2 to i64
  %4 = getelementptr inbounds [2 x [33 x i8]], [2 x [33 x i8]]* @id_space, i64 0, i64 %3
  %5 = getelementptr inbounds [33 x i8], [33 x i8]* %4, i64 0, i64 0
  store i8* %5, i8** getelementptr inbounds (%struct.T_VAL, %struct.T_VAL* @curval, i32 0, i32 1, i32 0), align 2
  %6 = load i32, i32* @cur_line, align 4
  %7 = shl i32 %6, 10
  %8 = load i32, i32* @char_pos, align 4
  %9 = or i32 %7, %8
  %10 = trunc i32 %9 to i16
  store i16 %10, i16* getelementptr inbounds (%struct.T_VAL, %struct.T_VAL* @curval, i32 0, i32 0), align 2
  %11 = load i8, i8* %1, align 1
  %12 = call zeroext i16 @get_id(i8 noundef signext %11)
  ret i16 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call zeroext i16 @get_tok()
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
