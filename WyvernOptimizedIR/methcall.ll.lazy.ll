; ModuleID = './methcall.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Shootout/methcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Toggle = type { i8, {}*, %struct.Toggle* (%struct.Toggle*)* }
%struct.NthToggle = type { i8, i8 (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"true\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"false\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local signext i8 @toggle_value(%struct.Toggle* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %0, i64 0, i32 0
  %3 = load i8, i8* %2, align 8
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.Toggle* @toggle_activate(%struct.Toggle* noundef returned %0) #1 {
  %2 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %0, i64 0, i32 0
  %3 = load i8, i8* %2, align 8
  %.not = icmp eq i8 %3, 0
  %4 = zext i1 %.not to i8
  %5 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %0, i64 0, i32 0
  store i8 %4, i8* %5, align 8
  ret %struct.Toggle* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.Toggle* @init_Toggle(%struct.Toggle* noundef returned writeonly %0, i8 noundef signext %1) #2 {
  %3 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %0, i64 0, i32 0
  store i8 %1, i8* %3, align 8
  %4 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %0, i64 0, i32 1
  %5 = bitcast {}** %4 to i8 (%struct.Toggle*)**
  store i8 (%struct.Toggle*)* @toggle_value, i8 (%struct.Toggle*)** %5, align 8
  %6 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %0, i64 0, i32 2
  store %struct.Toggle* (%struct.Toggle*)* @toggle_activate, %struct.Toggle* (%struct.Toggle*)** %6, align 8
  ret %struct.Toggle* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Toggle* @new_Toggle(i8 noundef signext %0) #3 {
  %2 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #7
  %3 = bitcast i8* %2 to %struct.Toggle*
  %4 = call %struct.Toggle* @init_Toggle(%struct.Toggle* noundef %3, i8 noundef signext %0)
  ret %struct.Toggle* %3
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.NthToggle* @nth_toggle_activate(%struct.NthToggle* noundef returned %0) #1 {
  %2 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %0, i64 0, i32 4
  %3 = load i32, i32* %2, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* %2, align 4
  %5 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %0, i64 0, i32 3
  %6 = load i32, i32* %5, align 8
  %.not = icmp slt i32 %4, %6
  br i1 %.not, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %0, i64 0, i32 0
  %9 = load i8, i8* %8, align 8
  %.not1 = icmp eq i8 %9, 0
  %10 = zext i1 %.not1 to i8
  %11 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %0, i64 0, i32 0
  store i8 %10, i8* %11, align 8
  %12 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %0, i64 0, i32 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %7, %1
  ret %struct.NthToggle* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local %struct.NthToggle* @init_NthToggle(%struct.NthToggle* noundef returned writeonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %0, i64 0, i32 3
  store i32 %1, i32* %3, align 8
  %4 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %0, i64 0, i32 4
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %0, i64 0, i32 2
  store %struct.Toggle* (%struct.Toggle*)* bitcast (%struct.NthToggle* (%struct.NthToggle*)* @nth_toggle_activate to %struct.Toggle* (%struct.Toggle*)*), %struct.Toggle* (%struct.Toggle*)** %5, align 8
  ret %struct.NthToggle* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NthToggle* @new_NthToggle(i8 noundef signext %0, i32 noundef %1) #3 {
  %3 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #7
  %4 = bitcast i8* %3 to %struct.Toggle*
  %5 = call %struct.Toggle* @init_Toggle(%struct.Toggle* noundef %4, i8 noundef signext %0)
  %6 = bitcast i8* %3 to %struct.NthToggle*
  %7 = call %struct.NthToggle* @init_NthToggle(%struct.NthToggle* noundef %6, i32 noundef %1)
  ret %struct.NthToggle* %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #3 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 1
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @atoi(i8* noundef %6) #8
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ %7, %4 ], [ 500000000, %8 ]
  %11 = call %struct.Toggle* @new_Toggle(i8 noundef signext 1)
  br label %12

12:                                               ; preds = %22, %9
  %.01 = phi i32 [ 0, %9 ], [ %23, %22 ]
  %.0 = phi i32 [ 1, %9 ], [ %phi.cast, %22 ]
  %13 = icmp slt i32 %.01, %10
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %11, i64 0, i32 2
  %16 = load %struct.Toggle* (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)** %15, align 8
  %17 = call %struct.Toggle* %16(%struct.Toggle* noundef %11) #7
  %18 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %17, i64 0, i32 1
  %19 = bitcast {}** %18 to i8 (%struct.Toggle*)**
  %20 = load i8 (%struct.Toggle*)*, i8 (%struct.Toggle*)** %19, align 8
  %21 = call signext i8 %20(%struct.Toggle* noundef %11) #7
  br label %22

22:                                               ; preds = %14
  %23 = add nuw nsw i32 %.01, 1
  %phi.cast = sext i8 %21 to i32
  br label %12, !llvm.loop !4

24:                                               ; preds = %12
  %.not = icmp eq i32 %.0, 0
  %25 = select i1 %.not, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)
  %26 = call i32 @puts(i8* noundef nonnull dereferenceable(1) %25) #7
  %27 = getelementptr %struct.Toggle, %struct.Toggle* %11, i64 0, i32 0
  call void @free(i8* noundef %27) #7
  %28 = call %struct.NthToggle* @new_NthToggle(i8 noundef signext 1, i32 noundef 3)
  br label %29

29:                                               ; preds = %41, %24
  %.12 = phi i32 [ 0, %24 ], [ %42, %41 ]
  %.1 = phi i32 [ 1, %24 ], [ %phi.cast3, %41 ]
  %30 = icmp slt i32 %.12, %10
  br i1 %30, label %31, label %43

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %28, i64 0, i32 2
  %33 = load %struct.Toggle* (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)** %32, align 8
  %34 = bitcast %struct.NthToggle* %28 to %struct.Toggle*
  %35 = call %struct.Toggle* %33(%struct.Toggle* noundef %34) #7
  %36 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %35, i64 0, i32 1
  %37 = bitcast {}** %36 to i8 (%struct.Toggle*)**
  %38 = load i8 (%struct.Toggle*)*, i8 (%struct.Toggle*)** %37, align 8
  %39 = bitcast %struct.NthToggle* %28 to %struct.Toggle*
  %40 = call signext i8 %38(%struct.Toggle* noundef %39) #7
  br label %41

41:                                               ; preds = %31
  %42 = add nuw nsw i32 %.12, 1
  %phi.cast3 = sext i8 %40 to i32
  br label %29, !llvm.loop !6

43:                                               ; preds = %29
  %.not4 = icmp eq i32 %.1, 0
  %44 = select i1 %.not4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)
  %45 = call i32 @puts(i8* noundef nonnull dereferenceable(1) %44) #7
  %46 = getelementptr %struct.NthToggle, %struct.NthToggle* %28, i64 0, i32 0
  call void @free(i8* noundef %46) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #5

declare dso_local i32 @puts(i8* noundef) #6

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
