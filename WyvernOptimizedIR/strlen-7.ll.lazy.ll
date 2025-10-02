; ModuleID = './strlen-7.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strlen-7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.B = type { [12 x i8] }
%struct.A = type { i32, [1 x i8], void (...)* }

@b = dso_local global %struct.B zeroinitializer, align 1
@.str = private unnamed_addr constant [7 x i8] c"foobar\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @init(i8* noundef %0, i8* noundef %1) #0 {
  %3 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) %1) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_dynamic_type(%struct.A* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.A, %struct.A* %0, i64 0, i32 1, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %2, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds (%struct.B, %struct.B* @b, i64 0, i32 0, i64 0), i64 12, i1 false)
  call void @init(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %3 = call i64 @strlen(i8* noundef nonnull %2) #4
  %.not = icmp eq i64 %3, 6
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  call void @abort() #5
  unreachable

5:                                                ; preds = %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #4
  %2 = bitcast i8* %1 to %struct.A*
  call void @test_dynamic_type(%struct.A* noundef %2)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i8* @malloc(i64 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
