; ModuleID = './960117-1.ll'
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local zeroext i16 @get_id(i8 noundef signext %0) #0 {
  %2 = load i8*, i8** getelementptr inbounds (%struct.T_VAL, %struct.T_VAL* @curval, i64 0, i32 1, i32 0), align 2
  store i8 %0, i8* %2, align 1
  ret i16 undef
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local zeroext i16 @get_tok() #0 {
  %1 = load i16, i16* @idc, align 2
  %2 = sext i16 %1 to i64
  %3 = getelementptr inbounds [2 x [33 x i8]], [2 x [33 x i8]]* @id_space, i64 0, i64 %2, i64 0
  store i8* %3, i8** getelementptr inbounds (%struct.T_VAL, %struct.T_VAL* @curval, i64 0, i32 1, i32 0), align 2
  %4 = load i32, i32* @cur_line, align 4
  %5 = shl i32 %4, 10
  %6 = load i32, i32* @char_pos, align 4
  %7 = or i32 %5, %6
  %8 = trunc i32 %7 to i16
  store i16 %8, i16* getelementptr inbounds (%struct.T_VAL, %struct.T_VAL* @curval, i64 0, i32 0), align 2
  %9 = call zeroext i16 @get_id(i8 noundef signext 99)
  ret i16 %9
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call zeroext i16 @get_tok()
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
