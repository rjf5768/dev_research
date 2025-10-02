; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2010-05-24-BitfieldTest.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2010-05-24-BitfieldTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ia32_mcg_cap_t = type { i64 }
%struct.anon = type { i16, [6 x i8] }

@.str = private unnamed_addr constant [11 x i8] c"ctl_p == 0\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"/project/test/llvm-test-suite/SingleSource/UnitTests/2010-05-24-BitfieldTest.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.ia32_mcg_cap_t, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = bitcast %union.ia32_mcg_cap_t* %7 to i64*
  store i64 2054, i64* %8, align 8
  %9 = bitcast %union.ia32_mcg_cap_t* %7 to %struct.anon*
  %10 = bitcast %struct.anon* %9 to i16*
  %11 = load i16, i16* %10, align 8
  %12 = lshr i16 %11, 8
  %13 = and i16 %12, 1
  %14 = zext i16 %13 to i64
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %19

18:                                               ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 noundef 19, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

19:                                               ; preds = %17
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
