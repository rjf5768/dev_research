; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strlen-6.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strlen-6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i0 = dso_local global i32 0, align 4
@ca = dso_local constant [2 x [3 x i8]] [[3 x i8] c"12\00", [3 x i8] zeroinitializer], align 1
@cb = dso_local constant [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] c"4\00\00"], align 1
@va = dso_local global [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] zeroinitializer], align 1
@vb = dso_local global [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] c"45\00"], align 1
@.str = private unnamed_addr constant [7 x i8] c"123456\00", align 1
@s = dso_local global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), align 8
@pca = dso_local global [3 x i8]* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @ca, i32 0, i32 0), align 8
@pcb = dso_local global [3 x i8]* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @cb, i32 0, i32 0), align 8
@pva = dso_local global [3 x i8]* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @va, i32 0, i32 0), align 8
@pvb = dso_local global [3 x i8]* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @vb, i32 0, i32 0), align 8
@nfails = dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"line %i: strlen ((%s) = (\22%s\22)) == %u failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"i0 ? \221\22 : ca[0]\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"i0 ? ca[0] : \22123\22\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"i0 ? \221\22 : cb[0]\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"i0 ? cb[0] : \2212\22\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"i0 ? \221\22 : va[0]\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"i0 ? va[0] : \221234\22\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"i0 ? \221\22 : vb[0]\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"i0 ? vb[0] : \2212\22\00", align 1
@__const.test_binary_cond_expr_local.lca = private unnamed_addr constant [2 x [3 x i8]] [[3 x i8] c"12\00", [3 x i8] zeroinitializer], align 1
@__const.test_binary_cond_expr_local.lcb = private unnamed_addr constant [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] c"4\00\00"], align 1
@__const.test_binary_cond_expr_local.lva = private unnamed_addr constant [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] zeroinitializer], align 1
@__const.test_binary_cond_expr_local.lvb = private unnamed_addr constant [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] c"45\00"], align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"i0 ? \221\22 : lca[0]\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"i0 ? lca[0] : \22123\22\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"i0 ? \221\22 : lcb[0]\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"i0 ? lcb[0] : \2212\22\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"i0 ? \221\22 : lva[0]\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"i0 ? lva[0] : \221234\22\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"i0 ? \221\22 : lvb[0]\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"i0 ? lvb[0] : \2212\22\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"i0 == 0 ? s : i0 == 1 ? vb[0] : \22123\22\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"i0 == 0 ? vb[0] : i0 == 1 ? s : \22123\22\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"i0 == 0 ? \22123\22 : i0 == 1 ? s : vb[0]\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"i0 ? *pca : *pcb\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"i0 ? *pcb : *pca\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"i0 ? *pva : *pvb\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"i0 ? *pvb : *pva\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @test_binary_cond_expr_global()
  call void @test_binary_cond_expr_local()
  call void @test_ternary_cond_expr()
  call void @test_binary_cond_expr_arrayptr()
  %1 = load i32, i32* @nfails, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @abort() #4
  unreachable

4:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @test_binary_cond_expr_global() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  br label %17

17:                                               ; preds = %0
  %18 = load volatile i32, i32* @i0, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @ca, i64 0, i64 0, i64 0)
  store i8* %21, i8** %1, align 8
  %22 = load i8*, i8** %1, align 8
  %23 = call i64 @strlen(i8* noundef %22)
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %33

28:                                               ; preds = %17
  %29 = load i8*, i8** %1, align 8
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* noundef %29, i32 noundef 2)
  %31 = load i32, i32* @nfails, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* @nfails, align 4
  br label %33

33:                                               ; preds = %28, %27
  %34 = phi i32 [ 0, %27 ], [ %32, %28 ]
  br label %35

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %35
  %37 = load volatile i32, i32* @i0, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @ca, i64 0, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  store i8* %40, i8** %3, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = call i64 @strlen(i8* noundef %41)
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %52

47:                                               ; preds = %36
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* noundef %48, i32 noundef 3)
  %50 = load i32, i32* @nfails, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* @nfails, align 4
  br label %52

52:                                               ; preds = %47, %46
  %53 = phi i32 [ 0, %46 ], [ %51, %47 ]
  br label %54

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %54
  %56 = load volatile i32, i32* @i0, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @cb, i64 0, i64 0, i64 0)
  store i8* %59, i8** %5, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i64 @strlen(i8* noundef %60)
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 4
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %71

66:                                               ; preds = %55
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* noundef %67, i32 noundef 4)
  %69 = load i32, i32* @nfails, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* @nfails, align 4
  br label %71

71:                                               ; preds = %66, %65
  %72 = phi i32 [ 0, %65 ], [ %70, %66 ]
  br label %73

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %73
  %75 = load volatile i32, i32* @i0, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @cb, i64 0, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)
  store i8* %78, i8** %7, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = call i64 @strlen(i8* noundef %79)
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %90

85:                                               ; preds = %74
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* noundef %86, i32 noundef 2)
  %88 = load i32, i32* @nfails, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* @nfails, align 4
  br label %90

90:                                               ; preds = %85, %84
  %91 = phi i32 [ 0, %84 ], [ %89, %85 ]
  br label %92

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %92
  %94 = load volatile i32, i32* @i0, align 4
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @va, i64 0, i64 0, i64 0)
  store i8* %97, i8** %9, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = call i64 @strlen(i8* noundef %98)
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp eq i32 %101, 3
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %109

104:                                              ; preds = %93
  %105 = load i8*, i8** %9, align 8
  %106 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* noundef %105, i32 noundef 3)
  %107 = load i32, i32* @nfails, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* @nfails, align 4
  br label %109

109:                                              ; preds = %104, %103
  %110 = phi i32 [ 0, %103 ], [ %108, %104 ]
  br label %111

111:                                              ; preds = %109
  br label %112

112:                                              ; preds = %111
  %113 = load volatile i32, i32* @i0, align 4
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @va, i64 0, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  store i8* %116, i8** %11, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = call i64 @strlen(i8* noundef %117)
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp eq i32 %120, 4
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  br label %128

123:                                              ; preds = %112
  %124 = load i8*, i8** %11, align 8
  %125 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* noundef %124, i32 noundef 4)
  %126 = load i32, i32* @nfails, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* @nfails, align 4
  br label %128

128:                                              ; preds = %123, %122
  %129 = phi i32 [ 0, %122 ], [ %127, %123 ]
  br label %130

130:                                              ; preds = %128
  br label %131

131:                                              ; preds = %130
  %132 = load volatile i32, i32* @i0, align 4
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @vb, i64 0, i64 0, i64 0)
  store i8* %135, i8** %13, align 8
  %136 = load i8*, i8** %13, align 8
  %137 = call i64 @strlen(i8* noundef %136)
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %14, align 4
  %140 = icmp eq i32 %139, 5
  br i1 %140, label %141, label %142

141:                                              ; preds = %131
  br label %147

142:                                              ; preds = %131
  %143 = load i8*, i8** %13, align 8
  %144 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* noundef %143, i32 noundef 5)
  %145 = load i32, i32* @nfails, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* @nfails, align 4
  br label %147

147:                                              ; preds = %142, %141
  %148 = phi i32 [ 0, %141 ], [ %146, %142 ]
  br label %149

149:                                              ; preds = %147
  br label %150

150:                                              ; preds = %149
  %151 = load volatile i32, i32* @i0, align 4
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i8* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @vb, i64 0, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)
  store i8* %154, i8** %15, align 8
  %155 = load i8*, i8** %15, align 8
  %156 = call i64 @strlen(i8* noundef %155)
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %16, align 4
  %158 = load i32, i32* %16, align 4
  %159 = icmp eq i32 %158, 2
  br i1 %159, label %160, label %161

160:                                              ; preds = %150
  br label %166

161:                                              ; preds = %150
  %162 = load i8*, i8** %15, align 8
  %163 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* noundef %162, i32 noundef 2)
  %164 = load i32, i32* @nfails, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* @nfails, align 4
  br label %166

166:                                              ; preds = %161, %160
  %167 = phi i32 [ 0, %160 ], [ %165, %161 ]
  br label %168

168:                                              ; preds = %166
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @test_binary_cond_expr_local() #0 {
  %1 = alloca [2 x [3 x i8]], align 1
  %2 = alloca [2 x [3 x i8]], align 1
  %3 = alloca [2 x [3 x i8]], align 1
  %4 = alloca [2 x [3 x i8]], align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = bitcast [2 x [3 x i8]]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @__const.test_binary_cond_expr_local.lca, i32 0, i32 0, i32 0), i64 6, i1 false)
  %22 = bitcast [2 x [3 x i8]]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @__const.test_binary_cond_expr_local.lcb, i32 0, i32 0, i32 0), i64 6, i1 false)
  %23 = bitcast [2 x [3 x i8]]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @__const.test_binary_cond_expr_local.lva, i32 0, i32 0, i32 0), i64 6, i1 false)
  %24 = bitcast [2 x [3 x i8]]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @__const.test_binary_cond_expr_local.lvb, i32 0, i32 0, i32 0), i64 6, i1 false)
  br label %25

25:                                               ; preds = %0
  %26 = load volatile i32, i32* @i0, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %32

29:                                               ; preds = %25
  %30 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %1, i64 0, i64 0
  %31 = getelementptr inbounds [3 x i8], [3 x i8]* %30, i64 0, i64 0
  br label %32

32:                                               ; preds = %29, %28
  %33 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %28 ], [ %31, %29 ]
  store i8* %33, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strlen(i8* noundef %34)
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %45

40:                                               ; preds = %32
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8* noundef %41, i32 noundef 2)
  %43 = load i32, i32* @nfails, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* @nfails, align 4
  br label %45

45:                                               ; preds = %40, %39
  %46 = phi i32 [ 0, %39 ], [ %44, %40 ]
  br label %47

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47
  %49 = load volatile i32, i32* @i0, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %1, i64 0, i64 0
  %53 = getelementptr inbounds [3 x i8], [3 x i8]* %52, i64 0, i64 0
  br label %55

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %51
  %56 = phi i8* [ %53, %51 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %54 ]
  store i8* %56, i8** %7, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i64 @strlen(i8* noundef %57)
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %68

63:                                               ; preds = %55
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* noundef %64, i32 noundef 3)
  %66 = load i32, i32* @nfails, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* @nfails, align 4
  br label %68

68:                                               ; preds = %63, %62
  %69 = phi i32 [ 0, %62 ], [ %67, %63 ]
  br label %70

70:                                               ; preds = %68
  br label %71

71:                                               ; preds = %70
  %72 = load volatile i32, i32* @i0, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %78

75:                                               ; preds = %71
  %76 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %2, i64 0, i64 0
  %77 = getelementptr inbounds [3 x i8], [3 x i8]* %76, i64 0, i64 0
  br label %78

78:                                               ; preds = %75, %74
  %79 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %74 ], [ %77, %75 ]
  store i8* %79, i8** %9, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = call i64 @strlen(i8* noundef %80)
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp eq i32 %83, 4
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %91

86:                                               ; preds = %78
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8* noundef %87, i32 noundef 4)
  %89 = load i32, i32* @nfails, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* @nfails, align 4
  br label %91

91:                                               ; preds = %86, %85
  %92 = phi i32 [ 0, %85 ], [ %90, %86 ]
  br label %93

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %93
  %95 = load volatile i32, i32* @i0, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %2, i64 0, i64 0
  %99 = getelementptr inbounds [3 x i8], [3 x i8]* %98, i64 0, i64 0
  br label %101

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %100, %97
  %102 = phi i8* [ %99, %97 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %100 ]
  store i8* %102, i8** %11, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = call i64 @strlen(i8* noundef %103)
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %114

109:                                              ; preds = %101
  %110 = load i8*, i8** %11, align 8
  %111 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i8* noundef %110, i32 noundef 2)
  %112 = load i32, i32* @nfails, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* @nfails, align 4
  br label %114

114:                                              ; preds = %109, %108
  %115 = phi i32 [ 0, %108 ], [ %113, %109 ]
  br label %116

116:                                              ; preds = %114
  br label %117

117:                                              ; preds = %116
  %118 = load volatile i32, i32* @i0, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  br label %124

121:                                              ; preds = %117
  %122 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %3, i64 0, i64 0
  %123 = getelementptr inbounds [3 x i8], [3 x i8]* %122, i64 0, i64 0
  br label %124

124:                                              ; preds = %121, %120
  %125 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %120 ], [ %123, %121 ]
  store i8* %125, i8** %13, align 8
  %126 = load i8*, i8** %13, align 8
  %127 = call i64 @strlen(i8* noundef %126)
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %14, align 4
  %130 = icmp eq i32 %129, 3
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %137

132:                                              ; preds = %124
  %133 = load i8*, i8** %13, align 8
  %134 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* noundef %133, i32 noundef 3)
  %135 = load i32, i32* @nfails, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* @nfails, align 4
  br label %137

137:                                              ; preds = %132, %131
  %138 = phi i32 [ 0, %131 ], [ %136, %132 ]
  br label %139

139:                                              ; preds = %137
  br label %140

140:                                              ; preds = %139
  %141 = load volatile i32, i32* @i0, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %3, i64 0, i64 0
  %145 = getelementptr inbounds [3 x i8], [3 x i8]* %144, i64 0, i64 0
  br label %147

146:                                              ; preds = %140
  br label %147

147:                                              ; preds = %146, %143
  %148 = phi i8* [ %145, %143 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %146 ]
  store i8* %148, i8** %15, align 8
  %149 = load i8*, i8** %15, align 8
  %150 = call i64 @strlen(i8* noundef %149)
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* %16, align 4
  %153 = icmp eq i32 %152, 4
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  br label %160

155:                                              ; preds = %147
  %156 = load i8*, i8** %15, align 8
  %157 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8* noundef %156, i32 noundef 4)
  %158 = load i32, i32* @nfails, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* @nfails, align 4
  br label %160

160:                                              ; preds = %155, %154
  %161 = phi i32 [ 0, %154 ], [ %159, %155 ]
  br label %162

162:                                              ; preds = %160
  br label %163

163:                                              ; preds = %162
  %164 = load volatile i32, i32* @i0, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  br label %170

167:                                              ; preds = %163
  %168 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %4, i64 0, i64 0
  %169 = getelementptr inbounds [3 x i8], [3 x i8]* %168, i64 0, i64 0
  br label %170

170:                                              ; preds = %167, %166
  %171 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %166 ], [ %169, %167 ]
  store i8* %171, i8** %17, align 8
  %172 = load i8*, i8** %17, align 8
  %173 = call i64 @strlen(i8* noundef %172)
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %18, align 4
  %175 = load i32, i32* %18, align 4
  %176 = icmp eq i32 %175, 5
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  br label %183

178:                                              ; preds = %170
  %179 = load i8*, i8** %17, align 8
  %180 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i8* noundef %179, i32 noundef 5)
  %181 = load i32, i32* @nfails, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* @nfails, align 4
  br label %183

183:                                              ; preds = %178, %177
  %184 = phi i32 [ 0, %177 ], [ %182, %178 ]
  br label %185

185:                                              ; preds = %183
  br label %186

186:                                              ; preds = %185
  %187 = load volatile i32, i32* @i0, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %4, i64 0, i64 0
  %191 = getelementptr inbounds [3 x i8], [3 x i8]* %190, i64 0, i64 0
  br label %193

192:                                              ; preds = %186
  br label %193

193:                                              ; preds = %192, %189
  %194 = phi i8* [ %191, %189 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %192 ]
  store i8* %194, i8** %19, align 8
  %195 = load i8*, i8** %19, align 8
  %196 = call i64 @strlen(i8* noundef %195)
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %20, align 4
  %198 = load i32, i32* %20, align 4
  %199 = icmp eq i32 %198, 2
  br i1 %199, label %200, label %201

200:                                              ; preds = %193
  br label %206

201:                                              ; preds = %193
  %202 = load i8*, i8** %19, align 8
  %203 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i8* noundef %202, i32 noundef 2)
  %204 = load i32, i32* @nfails, align 4
  %205 = add i32 %204, 1
  store i32 %205, i32* @nfails, align 4
  br label %206

206:                                              ; preds = %201, %200
  %207 = phi i32 [ 0, %200 ], [ %205, %201 ]
  br label %208

208:                                              ; preds = %206
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @test_ternary_cond_expr() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  br label %7

7:                                                ; preds = %0
  %8 = load volatile i32, i32* @i0, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load i8*, i8** @s, align 8
  br label %17

12:                                               ; preds = %7
  %13 = load volatile i32, i32* @i0, align 4
  %14 = icmp eq i32 %13, 1
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @vb, i64 0, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  br label %17

17:                                               ; preds = %12, %10
  %18 = phi i8* [ %11, %10 ], [ %16, %12 ]
  store i8* %18, i8** %1, align 8
  %19 = load i8*, i8** %1, align 8
  %20 = call i64 @strlen(i8* noundef %19)
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp eq i32 %22, 6
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %30

25:                                               ; preds = %17
  %26 = load i8*, i8** %1, align 8
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i8* noundef %26, i32 noundef 6)
  %28 = load i32, i32* @nfails, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* @nfails, align 4
  br label %30

30:                                               ; preds = %25, %24
  %31 = phi i32 [ 0, %24 ], [ %29, %25 ]
  br label %32

32:                                               ; preds = %30
  br label %33

33:                                               ; preds = %32
  %34 = load volatile i32, i32* @i0, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %45

37:                                               ; preds = %33
  %38 = load volatile i32, i32* @i0, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i8*, i8** @s, align 8
  br label %43

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i8* [ %41, %40 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %42 ]
  br label %45

45:                                               ; preds = %43, %36
  %46 = phi i8* [ getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @vb, i64 0, i64 0, i64 0), %36 ], [ %44, %43 ]
  store i8* %46, i8** %3, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = call i64 @strlen(i8* noundef %47)
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 5
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %58

53:                                               ; preds = %45
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i64 0, i64 0), i8* noundef %54, i32 noundef 5)
  %56 = load i32, i32* @nfails, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* @nfails, align 4
  br label %58

58:                                               ; preds = %53, %52
  %59 = phi i32 [ 0, %52 ], [ %57, %53 ]
  br label %60

60:                                               ; preds = %58
  br label %61

61:                                               ; preds = %60
  %62 = load volatile i32, i32* @i0, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %73

65:                                               ; preds = %61
  %66 = load volatile i32, i32* @i0, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i8*, i8** @s, align 8
  br label %71

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i8* [ %69, %68 ], [ getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @vb, i64 0, i64 0, i64 0), %70 ]
  br label %73

73:                                               ; preds = %71, %64
  %74 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %64 ], [ %72, %71 ]
  store i8* %74, i8** %5, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = call i64 @strlen(i8* noundef %75)
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %86

81:                                               ; preds = %73
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i64 0, i64 0), i8* noundef %82, i32 noundef 3)
  %84 = load i32, i32* @nfails, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* @nfails, align 4
  br label %86

86:                                               ; preds = %81, %80
  %87 = phi i32 [ 0, %80 ], [ %85, %81 ]
  br label %88

88:                                               ; preds = %86
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @test_binary_cond_expr_arrayptr() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  br label %9

9:                                                ; preds = %0
  %10 = load volatile i32, i32* @i0, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load [3 x i8]*, [3 x i8]** @pca, align 8
  %14 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  br label %18

15:                                               ; preds = %9
  %16 = load [3 x i8]*, [3 x i8]** @pcb, align 8
  %17 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 0
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i8* [ %14, %12 ], [ %17, %15 ]
  store i8* %19, i8** %1, align 8
  %20 = load i8*, i8** %1, align 8
  %21 = call i64 @strlen(i8* noundef %20)
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %31

26:                                               ; preds = %18
  %27 = load i8*, i8** %1, align 8
  %28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i8* noundef %27, i32 noundef 4)
  %29 = load i32, i32* @nfails, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* @nfails, align 4
  br label %31

31:                                               ; preds = %26, %25
  %32 = phi i32 [ 0, %25 ], [ %30, %26 ]
  br label %33

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33
  %35 = load volatile i32, i32* @i0, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load [3 x i8]*, [3 x i8]** @pcb, align 8
  %39 = getelementptr inbounds [3 x i8], [3 x i8]* %38, i64 0, i64 0
  br label %43

40:                                               ; preds = %34
  %41 = load [3 x i8]*, [3 x i8]** @pca, align 8
  %42 = getelementptr inbounds [3 x i8], [3 x i8]* %41, i64 0, i64 0
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i8* [ %39, %37 ], [ %42, %40 ]
  store i8* %44, i8** %3, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = call i64 @strlen(i8* noundef %45)
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %56

51:                                               ; preds = %43
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i8* noundef %52, i32 noundef 2)
  %54 = load i32, i32* @nfails, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* @nfails, align 4
  br label %56

56:                                               ; preds = %51, %50
  %57 = phi i32 [ 0, %50 ], [ %55, %51 ]
  br label %58

58:                                               ; preds = %56
  br label %59

59:                                               ; preds = %58
  %60 = load volatile i32, i32* @i0, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load [3 x i8]*, [3 x i8]** @pva, align 8
  %64 = getelementptr inbounds [3 x i8], [3 x i8]* %63, i64 0, i64 0
  br label %68

65:                                               ; preds = %59
  %66 = load [3 x i8]*, [3 x i8]** @pvb, align 8
  %67 = getelementptr inbounds [3 x i8], [3 x i8]* %66, i64 0, i64 0
  br label %68

68:                                               ; preds = %65, %62
  %69 = phi i8* [ %64, %62 ], [ %67, %65 ]
  store i8* %69, i8** %5, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = call i64 @strlen(i8* noundef %70)
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 5
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %81

76:                                               ; preds = %68
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0), i8* noundef %77, i32 noundef 5)
  %79 = load i32, i32* @nfails, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* @nfails, align 4
  br label %81

81:                                               ; preds = %76, %75
  %82 = phi i32 [ 0, %75 ], [ %80, %76 ]
  br label %83

83:                                               ; preds = %81
  br label %84

84:                                               ; preds = %83
  %85 = load volatile i32, i32* @i0, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load [3 x i8]*, [3 x i8]** @pvb, align 8
  %89 = getelementptr inbounds [3 x i8], [3 x i8]* %88, i64 0, i64 0
  br label %93

90:                                               ; preds = %84
  %91 = load [3 x i8]*, [3 x i8]** @pva, align 8
  %92 = getelementptr inbounds [3 x i8], [3 x i8]* %91, i64 0, i64 0
  br label %93

93:                                               ; preds = %90, %87
  %94 = phi i8* [ %89, %87 ], [ %92, %90 ]
  store i8* %94, i8** %7, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = call i64 @strlen(i8* noundef %95)
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp eq i32 %98, 3
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %106

101:                                              ; preds = %93
  %102 = load i8*, i8** %7, align 8
  %103 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i8* noundef %102, i32 noundef 3)
  %104 = load i32, i32* @nfails, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* @nfails, align 4
  br label %106

106:                                              ; preds = %101, %100
  %107 = phi i32 [ 0, %100 ], [ %105, %101 ]
  br label %108

108:                                              ; preds = %106
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
