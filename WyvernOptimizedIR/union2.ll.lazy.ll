; ModuleID = './union2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/union2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.myUnion = type { i32 }
%struct.myStruct = type { i32*, i16 }

@uu = internal global %union.myUnion zeroinitializer, align 4
@.str = private unnamed_addr constant [13 x i8] c"uu.i  = %hd\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"uu.i9 = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"uu.i31= %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"error: s.i=%x\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local { i32*, i16 } @test(%union.myUnion* noundef %0) #0 {
  %2 = alloca %struct.myStruct, align 8
  %3 = getelementptr %union.myUnion, %union.myUnion* %0, i64 0, i32 0
  store i32 -1, i32* %3, align 4
  %4 = bitcast %union.myUnion* %0 to i16*
  store i16 0, i16* %4, align 4
  %5 = getelementptr %union.myUnion, %union.myUnion* %0, i64 0, i32 0
  store i32 -1, i32* %5, align 4
  %6 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %2, i64 0, i32 0
  store i32* %5, i32** %6, align 8
  %7 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %2, i64 0, i32 1
  store i16 -1, i16* %7, align 8
  %8 = bitcast %struct.myStruct* %2 to { i32*, i16 }*
  %9 = load { i32*, i16 }, { i32*, i16 }* %8, align 8
  ret { i32*, i16 } %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %struct.myStruct, align 8
  %2 = call { i32*, i16 } @test(%union.myUnion* noundef nonnull @uu)
  %3 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %1, i64 0, i32 0
  %4 = extractvalue { i32*, i16 } %2, 0
  store i32* %4, i32** %3, align 8
  %5 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %1, i64 0, i32 1
  %6 = extractvalue { i32*, i16 } %2, 1
  store i16 %6, i16* %5, align 8
  %7 = load i16, i16* bitcast (%union.myUnion* @uu to i16*), align 4
  %8 = sext i16 %7 to i32
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef %8) #3
  %10 = load i32, i32* getelementptr inbounds (%union.myUnion, %union.myUnion* @uu, i64 0, i32 0), align 4
  %11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 noundef %10) #3
  %12 = load i32, i32* getelementptr inbounds (%union.myUnion, %union.myUnion* @uu, i64 0, i32 0), align 4
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef %12) #3
  %14 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %1, i64 0, i32 1
  %15 = load i16, i16* %14, align 8
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %0
  %18 = getelementptr inbounds %struct.myStruct, %struct.myStruct* %1, i64 0, i32 1
  %19 = load i16, i16* %18, align 8
  %20 = sext i16 %19 to i32
  %21 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 noundef %20) #3
  br label %22

22:                                               ; preds = %17, %0
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
