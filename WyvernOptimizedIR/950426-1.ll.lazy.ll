; ModuleID = './950426-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950426-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tag = type { i32, [5 x i8*] }

@s1 = dso_local global %struct.tag zeroinitializer, align 8
@p1 = dso_local global %struct.tag* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@i = dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"123\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  store i32 -1, i32* getelementptr inbounds (%struct.tag, %struct.tag* @s1, i64 0, i32 0), align 8
  store %struct.tag* @s1, %struct.tag** @p1, align 8
  %1 = call i32 @func1(i32* noundef getelementptr inbounds (%struct.tag, %struct.tag* @s1, i64 0, i32 0))
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %5

4:                                                ; preds = %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %3
  store i32 3, i32* @i, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.tag, %struct.tag* @s1, i64 0, i32 1, i64 3), align 8
  %6 = load %struct.tag*, %struct.tag** @p1, align 8
  %7 = getelementptr inbounds %struct.tag, %struct.tag* %6, i64 0, i32 1, i64 3
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  store i8* %9, i8** %7, align 8
  %10 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %8) #6
  %11 = icmp eq i64 %10, 3
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  br label %14

13:                                               ; preds = %5
  call void @abort() #5
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %12
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %14, %13, %4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @func1(i32* nocapture noundef readonly %0) #3 {
  %2 = load i32, i32* %0, align 4
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @foo(i8* nocapture noundef readnone %0) #4 {
  ret i32 undef
}

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
