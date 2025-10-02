; ModuleID = './ccc.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/SignlessTypes/ccc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Y = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Program requires integer parameter\00", align 1
@F1 = dso_local global i32 0, align 4
@F2 = dso_local global i32 0, align 4
@F3 = dso_local global i32 0, align 4
@F4 = dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%d %hd %hu\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @ubyteArg(i8 noundef zeroext %0) #0 {
  %2 = zext i8 %0 to i32
  %3 = add nuw nsw i32 %2, 2
  %4 = load i32, i32* @Y, align 4
  %5 = add nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @sbyteArg(i8 noundef signext %0) #0 {
  %2 = sext i8 %0 to i32
  %3 = add nsw i32 %2, 3
  %4 = load i32, i32* @Y, align 4
  %5 = add nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @ushortArg(i16 noundef zeroext %0) #0 {
  %2 = zext i16 %0 to i32
  %3 = add nuw nsw i32 %2, 4
  %4 = load i32, i32* @Y, align 4
  %5 = add nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @sshortArg(i16 noundef signext %0) #0 {
  %2 = sext i16 %0 to i32
  %3 = add nsw i32 %2, 5
  %4 = load i32, i32* @Y, align 4
  %5 = add nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #1 {
  %3 = icmp slt i32 %0, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #5
  call void @exit(i32 noundef 1) #6
  unreachable

6:                                                ; preds = %2
  store i32 ptrtoint (i32 (i8)* @ubyteArg to i32), i32* @F1, align 4
  store i32 ptrtoint (i32 (i8)* @sbyteArg to i32), i32* @F2, align 4
  store i32 ptrtoint (i32 (i16)* @ushortArg to i32), i32* @F3, align 4
  store i32 ptrtoint (i32 (i16)* @sshortArg to i32), i32* @F4, align 4
  %7 = getelementptr inbounds i8*, i8** %1, i64 1
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @atoi(i8* noundef %8) #7
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef %9, i32 noundef -1, i32 noundef 65535) #5
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
