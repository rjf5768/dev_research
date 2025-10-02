; ModuleID = './20020404-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020404-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_struct = type { i32 }
%struct.asection_struct = type { i8, i64, i64, i32, i32 }

@hello = internal global [6 x i8] c"hello\00", align 1
@.str = private unnamed_addr constant [8 x i8] c".newsec\00", align 1
@bfd_openw_with_cleanup.foo_bfd = internal global %struct.bfd_struct zeroinitializer, align 4
@bfd_make_section_anyway.foo_section = internal global %struct.asection_struct zeroinitializer, align 8

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  call void @dump_bfd_file(i8* noundef null, i8* noundef null, i8* noundef null, i64 noundef 3735928559, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @hello, i64 0, i64 0), i32 noundef 514703087)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @dump_bfd_file(i8* nocapture noundef readnone %0, i8* nocapture noundef readnone %1, i8* nocapture noundef readnone %2, i64 noundef %3, i8* nocapture noundef readnone %4, i32 noundef %5) #1 {
  %7 = call %struct.bfd_struct* @bfd_openw_with_cleanup(i8* noundef %0, i8* noundef %2, i8* noundef %1)
  %8 = call %struct.asection_struct* @bfd_make_section_anyway(%struct.bfd_struct* noundef nonnull %7, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = getelementptr inbounds %struct.asection_struct, %struct.asection_struct* %8, i64 0, i32 2
  store i64 %3, i64* %9, align 8
  %10 = getelementptr inbounds %struct.asection_struct, %struct.asection_struct* %8, i64 0, i32 1
  store i64 %3, i64* %10, align 8
  %11 = getelementptr %struct.asection_struct, %struct.asection_struct* %8, i64 0, i32 0
  %12 = load i8, i8* %11, align 8
  %13 = or i8 %12, 1
  store i8 %13, i8* %11, align 8
  %14 = getelementptr inbounds %struct.asection_struct, %struct.asection_struct* %8, i64 0, i32 3
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.asection_struct, %struct.asection_struct* %8, i64 0, i32 4
  store i32 0, i32* %15, align 4
  %16 = sext i32 %5 to i64
  %17 = call i32 @bfd_set_section_contents(%struct.bfd_struct* noundef nonnull %7, %struct.asection_struct* noundef nonnull %8, i8* noundef %4, i64 noundef 0, i64 noundef %16)
  ret void
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.bfd_struct* @bfd_openw_with_cleanup(i8* nocapture noundef readnone %0, i8* nocapture noundef readnone %1, i8* nocapture noundef readnone %2) #3 {
  ret %struct.bfd_struct* @bfd_openw_with_cleanup.foo_bfd
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.asection_struct* @bfd_make_section_anyway(%struct.bfd_struct* nocapture noundef readnone %0, i8* nocapture noundef readnone %1) #3 {
  ret %struct.asection_struct* @bfd_make_section_anyway.foo_section
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @bfd_set_section_size(%struct.bfd_struct* nocapture noundef readnone %0, %struct.asection_struct* nocapture noundef readnone %1, i64 noundef %2) #3 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @bfd_set_section_flags(%struct.bfd_struct* nocapture noundef readnone %0, %struct.asection_struct* nocapture noundef readnone %1, i32 noundef %2) #3 {
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bfd_set_section_contents(%struct.bfd_struct* nocapture noundef readnone %0, %struct.asection_struct* nocapture noundef readnone %1, i8* nocapture noundef readnone %2, i64 noundef %3, i64 noundef %4) #1 {
  %.not = icmp eq i64 %4, 514703087
  br i1 %.not, label %7, label %6

6:                                                ; preds = %5
  call void @abort() #4
  unreachable

7:                                                ; preds = %5
  ret i32 undef
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
