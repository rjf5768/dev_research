; ModuleID = './general-test.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/general-test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MyStruct = type { %struct.MyStruct*, i8, i16, i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"sizeof(MyStruct) == %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"sizeof(My17BitInt) == %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"sizeof(j) == %d\0A\00", align 1
@Data1 = dso_local global %struct.MyStruct zeroinitializer, align 8
@Data2 = dso_local global %struct.MyStruct zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"j = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"size sum is %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"rand = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"argc = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"num  = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"val  = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"that.i4Field  = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"that.i12Field = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"that.i17Field = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"that.i37Field = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"next.i4Field  = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"next.i12Field = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"next.i17Field = %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"next.i37Field = %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local nonnull %struct.MyStruct* @getSizes(i16 noundef signext %0, i64* nocapture noundef %1) #0 {
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 noundef 24) #5
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 noundef 4) #5
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 noundef 2) #5
  store i64 30, i64* %1, align 8
  %6 = trunc i16 %0 to i8
  store i8 %6, i8* getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data1, i64 0, i32 1), align 8
  %7 = add i16 %0, 1
  store i16 %7, i16* getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data1, i64 0, i32 2), align 2
  %8 = sext i16 %0 to i32
  %9 = add nsw i32 %8, 2
  store i32 %9, i32* getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data1, i64 0, i32 3), align 4
  %10 = sext i16 %0 to i64
  %11 = add nsw i64 %10, 3
  store i64 %11, i64* getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data1, i64 0, i32 4), align 8
  store %struct.MyStruct* null, %struct.MyStruct** getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data1, i64 0, i32 0), align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) bitcast (%struct.MyStruct* @Data2 to i8*), i8* noundef nonnull align 8 dereferenceable(24) bitcast (%struct.MyStruct* @Data1 to i8*), i64 24, i1 false)
  %12 = load i8, i8* getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data2, i64 0, i32 1), align 8
  %13 = mul i8 %12, 7
  store i8 %13, i8* getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data2, i64 0, i32 1), align 8
  %14 = load i16, i16* getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data2, i64 0, i32 2), align 2
  %15 = mul i16 %14, 7
  store i16 %15, i16* getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data2, i64 0, i32 2), align 2
  %16 = load i32, i32* getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data2, i64 0, i32 3), align 4
  %17 = mul i32 %16, 7
  store i32 %17, i32* getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data2, i64 0, i32 3), align 4
  %18 = load i64, i64* getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data2, i64 0, i32 4), align 8
  %19 = mul i64 %18, 7
  store i64 %19, i64* getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data2, i64 0, i32 4), align 8
  store %struct.MyStruct* @Data1, %struct.MyStruct** getelementptr inbounds (%struct.MyStruct, %struct.MyStruct* @Data2, i64 0, i32 0), align 8
  %20 = shl i16 %0, 1
  %21 = sext i16 %20 to i32
  %22 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef %21) #5
  %23 = load i64, i64* %1, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef %24) #5
  ret %struct.MyStruct* @Data2
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = alloca i64, align 8
  call void @srand(i32 noundef 0) #5
  %4 = call i32 @rand() #5
  store i64 0, i64* %3, align 8
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 noundef %4) #5
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 noundef %0) #5
  %7 = icmp sgt i32 %0, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8*, i8** %1, i64 1
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @atoi(i8* noundef %10) #6
  br label %12

12:                                               ; preds = %8, %2
  %.0 = phi i32 [ %11, %8 ], [ 0, %2 ]
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 noundef %.0) #5
  %14 = add nsw i32 %4, %0
  %15 = add nsw i32 %14, %.0
  %16 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 noundef %15) #5
  %17 = trunc i32 %15 to i16
  %18 = call %struct.MyStruct* @getSizes(i16 noundef signext %17, i64* noundef nonnull %3)
  %19 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %18, i64 0, i32 1
  %20 = load i8, i8* %19, align 8
  %21 = zext i8 %20 to i32
  %22 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 noundef %21) #5
  %23 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %18, i64 0, i32 2
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i32
  %26 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 noundef %25) #5
  %27 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %18, i64 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 noundef %28) #5
  %30 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %18, i64 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 noundef %32) #5
  %34 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %18, i64 0, i32 0
  %35 = load %struct.MyStruct*, %struct.MyStruct** %34, align 8
  %36 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %35, i64 0, i32 1
  %37 = load i8, i8* %36, align 8
  %38 = zext i8 %37 to i32
  %39 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef %38) #5
  %40 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %18, i64 0, i32 0
  %41 = load %struct.MyStruct*, %struct.MyStruct** %40, align 8
  %42 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %41, i64 0, i32 2
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i32
  %45 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef %44) #5
  %46 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %18, i64 0, i32 0
  %47 = load %struct.MyStruct*, %struct.MyStruct** %46, align 8
  %48 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %47, i64 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 noundef %49) #5
  %51 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %18, i64 0, i32 0
  %52 = load %struct.MyStruct*, %struct.MyStruct** %51, align 8
  %53 = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %52, i64 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 noundef %55) #5
  %57 = load i64, i64* %3, align 8
  %58 = trunc i64 %57 to i32
  %59 = and i32 %58, 1
  ret i32 %59
}

; Function Attrs: nounwind
declare dso_local void @srand(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
