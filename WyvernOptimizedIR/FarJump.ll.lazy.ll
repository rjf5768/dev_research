; ModuleID = './FarJump.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/SetjmpLongjmp/C/FarJump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }

@.str = private unnamed_addr constant [13 x i8] c"Inside quux\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Longjmping from quux: 927\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Inside qux\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Error: Shouldn't be here in qux\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Inside baz\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Error: Shouldn't be here in baz\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Inside bar\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Inside foo\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Returning from longjmp into foo\0A\00", align 1
@str = private unnamed_addr constant [12 x i8] c"Inside quux\00", align 1
@str.1 = private unnamed_addr constant [26 x i8] c"Longjmping from quux: 927\00", align 1
@str.2 = private unnamed_addr constant [11 x i8] c"Inside qux\00", align 1
@str.3 = private unnamed_addr constant [32 x i8] c"Error: Shouldn't be here in qux\00", align 1
@str.4 = private unnamed_addr constant [11 x i8] c"Inside baz\00", align 1
@str.5 = private unnamed_addr constant [32 x i8] c"Error: Shouldn't be here in baz\00", align 1
@str.6 = private unnamed_addr constant [11 x i8] c"Inside bar\00", align 1
@str.7 = private unnamed_addr constant [11 x i8] c"Inside foo\00", align 1
@str.8 = private unnamed_addr constant [32 x i8] c"Returning from longjmp into foo\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @quux(%struct.__jmp_buf_tag* noundef %0) #0 {
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @str, i64 0, i64 0))
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @str.1, i64 0, i64 0))
  call void @longjmp(%struct.__jmp_buf_tag* noundef %0, i32 noundef 927) #6
  unreachable
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @longjmp(%struct.__jmp_buf_tag* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @qux(%struct.__jmp_buf_tag* noundef %0) #3 {
  %2 = alloca [1 x %struct.__jmp_buf_tag], align 16
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @str.2, i64 0, i64 0))
  %3 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %2, i64 0, i64 0
  %4 = call i32 @_setjmp(%struct.__jmp_buf_tag* noundef nonnull %3) #7
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %5, label %6

5:                                                ; preds = %1
  call void @quux(%struct.__jmp_buf_tag* noundef %0)
  br label %7

6:                                                ; preds = %1
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @str.3, i64 0, i64 0))
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: nounwind returns_twice
declare dso_local i32 @_setjmp(%struct.__jmp_buf_tag* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz(%struct.__jmp_buf_tag* noundef %0) #3 {
  %2 = alloca [1 x %struct.__jmp_buf_tag], align 16
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @str.4, i64 0, i64 0))
  %3 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %2, i64 0, i64 0
  %4 = call i32 @_setjmp(%struct.__jmp_buf_tag* noundef nonnull %3) #7
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %5, label %6

5:                                                ; preds = %1
  call void @qux(%struct.__jmp_buf_tag* noundef %0)
  br label %7

6:                                                ; preds = %1
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @str.5, i64 0, i64 0))
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(%struct.__jmp_buf_tag* noundef %0) #3 {
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @str.6, i64 0, i64 0))
  call void @baz(%struct.__jmp_buf_tag* noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #3 {
  %1 = alloca [1 x %struct.__jmp_buf_tag], align 16
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @str.7, i64 0, i64 0))
  %2 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %1, i64 0, i64 0
  %3 = call i32 @_setjmp(%struct.__jmp_buf_tag* noundef nonnull %2) #7
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %6

4:                                                ; preds = %0
  %5 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %1, i64 0, i64 0
  call void @bar(%struct.__jmp_buf_tag* noundef nonnull %5)
  br label %7

6:                                                ; preds = %0
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @str.8, i64 0, i64 0))
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #3 {
  call void @foo()
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #5

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind returns_twice "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind returns_twice }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
