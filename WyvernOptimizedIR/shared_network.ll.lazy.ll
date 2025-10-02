; ModuleID = './shared_network.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/shared_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i8*, i8**, i32, i32, i8** }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @r_gethostbyname(i8* noundef %0, %struct.hostent* noundef writeonly %1, i8* nocapture noundef readnone %2, i64 noundef %3) #0 {
  %5 = icmp eq i8* %0, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = icmp eq %struct.hostent* %1, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %6, %4
  br label %18

9:                                                ; preds = %6
  %10 = call %struct.hostent* @gethostbyname(i8* noundef nonnull %0) #4
  %11 = icmp eq %struct.hostent* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = call i32* @__h_errno_location() #5
  %14 = load i32, i32* %13, align 4
  br label %18

15:                                               ; preds = %9
  %16 = bitcast %struct.hostent* %1 to i8*
  %17 = bitcast %struct.hostent* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %16, i8* noundef nonnull align 8 dereferenceable(32) %17, i64 32, i1 false)
  br label %18

18:                                               ; preds = %15, %12, %8
  %.0 = phi i32 [ -1, %8 ], [ %14, %12 ], [ 0, %15 ]
  ret i32 %.0
}

declare dso_local %struct.hostent* @gethostbyname(i8* noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__h_errno_location() #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
