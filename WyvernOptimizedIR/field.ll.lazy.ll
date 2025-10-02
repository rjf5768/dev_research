; ModuleID = './field.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myStruct = type { i32, [3 x i8], i8 }

@.str = private unnamed_addr constant [20 x i8] c"error:  offset1=%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"error: x.c = %x, y.c = %x\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.myStruct, align 4
  br i1 true, label %2, label %4

2:                                                ; preds = %0
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 12) #2
  br label %4

4:                                                ; preds = %2, %0
  %5 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %1, i64 0, i32 1
  %6 = bitcast [3 x i8]* %5 to i24*
  %7 = load i24, i24* %6, align 4
  %8 = or i24 %7, 127
  store i24 %8, i24* %6, align 4
  br i1 false, label %9, label %10

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9, %4
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
