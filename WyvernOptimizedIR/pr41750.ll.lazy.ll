; ModuleID = './pr41750.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr41750.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo_link_hash_table = type { %struct.bfd_link_hash_table, i32*, i32* }
%struct.bfd_link_hash_table = type { i32 }
%struct.foo_link_info = type { %struct.foo_link_hash_table* }

@hash = dso_local global %struct.foo_link_hash_table zeroinitializer, align 8
@link_info = dso_local global %struct.foo_link_info zeroinitializer, align 8
@abfd = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @foo_create_got_section(i32* noundef %0, %struct.foo_link_info* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.foo_link_info, %struct.foo_link_info* %1, i64 0, i32 0
  %4 = load %struct.foo_link_hash_table*, %struct.foo_link_hash_table** %3, align 8
  %5 = getelementptr inbounds %struct.foo_link_hash_table, %struct.foo_link_hash_table* %4, i64 0, i32 2
  store i32* %0, i32** %5, align 8
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32* @elf64_ia64_check_relocs(i32* noundef %0, %struct.foo_link_info* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.foo_link_info, %struct.foo_link_info* %1, i64 0, i32 0
  %4 = load %struct.foo_link_hash_table*, %struct.foo_link_hash_table** %3, align 8
  %5 = call i32* @get_got(i32* noundef %0, %struct.foo_link_info* noundef %1, %struct.foo_link_hash_table* noundef %4)
  ret i32* %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32* @get_got(i32* noundef %0, %struct.foo_link_info* nocapture noundef readonly %1, %struct.foo_link_hash_table* nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.foo_link_hash_table, %struct.foo_link_hash_table* %2, i64 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %.not = icmp eq i32* %5, null
  br i1 %.not, label %6, label %17

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.foo_link_hash_table, %struct.foo_link_hash_table* %2, i64 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %.not3 = icmp eq i32* %8, null
  br i1 %.not3, label %9, label %11

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.foo_link_hash_table, %struct.foo_link_hash_table* %2, i64 0, i32 1
  store i32* %0, i32** %10, align 8
  br label %11

11:                                               ; preds = %9, %6
  %.01 = phi i32* [ %8, %6 ], [ %0, %9 ]
  %12 = call i32 @foo_create_got_section(i32* noundef %.01, %struct.foo_link_info* noundef %1)
  %.not4 = icmp eq i32 %12, 0
  br i1 %.not4, label %13, label %14

13:                                               ; preds = %11
  br label %18

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.foo_link_hash_table, %struct.foo_link_hash_table* %2, i64 0, i32 2
  %16 = load i32*, i32** %15, align 8
  br label %17

17:                                               ; preds = %14, %3
  %.02 = phi i32* [ %5, %3 ], [ %16, %14 ]
  br label %18

18:                                               ; preds = %17, %13
  %.0 = phi i32* [ %.02, %17 ], [ null, %13 ]
  ret i32* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  store %struct.foo_link_hash_table* @hash, %struct.foo_link_hash_table** getelementptr inbounds (%struct.foo_link_info, %struct.foo_link_info* @link_info, i64 0, i32 0), align 8
  %1 = call i32* @elf64_ia64_check_relocs(i32* noundef nonnull @abfd, %struct.foo_link_info* noundef nonnull @link_info)
  %.not = icmp eq i32* %1, @abfd
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
