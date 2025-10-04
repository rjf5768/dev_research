; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/shared_options.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/shared_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optstruct = type { %struct.optnode*, i8* }
%struct.optnode = type { i8, i8*, i8*, %struct.optnode* }
%struct.option = type { i8*, i32, i32*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"!opt_parse: calloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"!Unknown option passed.\0A\00", align 1
@optind = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"!opt_check: opt == NULL\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"!opt_arg: opt == NULL\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"!opt_firstarg: opt == NULL\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"!opt_nextarg: *optnode == NULL\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"!register_option: No long option for -%c\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"WARNING: Ignoring option --%s (-%c)\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"WARNING: Ignoring option --%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"!register_long_option: malloc failed\0A\00", align 1
@optarg = external dso_local global i8*, align 8
@.str.11 = private unnamed_addr constant [44 x i8] c"ERROR: register_long_option: malloc failed\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @opt_free(%struct.optstruct* noundef %0) #0 {
  %2 = alloca %struct.optstruct*, align 8
  %3 = alloca %struct.optnode*, align 8
  %4 = alloca %struct.optnode*, align 8
  store %struct.optstruct* %0, %struct.optstruct** %2, align 8
  %5 = load %struct.optstruct*, %struct.optstruct** %2, align 8
  %6 = icmp ne %struct.optstruct* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %52

8:                                                ; preds = %1
  %9 = load %struct.optstruct*, %struct.optstruct** %2, align 8
  %10 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %9, i32 0, i32 0
  %11 = load %struct.optnode*, %struct.optnode** %10, align 8
  store %struct.optnode* %11, %struct.optnode** %3, align 8
  br label %12

12:                                               ; preds = %33, %8
  %13 = load %struct.optnode*, %struct.optnode** %3, align 8
  %14 = icmp ne %struct.optnode* %13, null
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  %16 = load %struct.optnode*, %struct.optnode** %3, align 8
  %17 = getelementptr inbounds %struct.optnode, %struct.optnode* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.optnode*, %struct.optnode** %3, align 8
  %22 = getelementptr inbounds %struct.optnode, %struct.optnode* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  call void @free(i8* noundef %23) #4
  br label %24

24:                                               ; preds = %20, %15
  %25 = load %struct.optnode*, %struct.optnode** %3, align 8
  %26 = getelementptr inbounds %struct.optnode, %struct.optnode* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.optnode*, %struct.optnode** %3, align 8
  %31 = getelementptr inbounds %struct.optnode, %struct.optnode* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  call void @free(i8* noundef %32) #4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.optnode*, %struct.optnode** %3, align 8
  store %struct.optnode* %34, %struct.optnode** %4, align 8
  %35 = load %struct.optnode*, %struct.optnode** %3, align 8
  %36 = getelementptr inbounds %struct.optnode, %struct.optnode* %35, i32 0, i32 3
  %37 = load %struct.optnode*, %struct.optnode** %36, align 8
  store %struct.optnode* %37, %struct.optnode** %3, align 8
  %38 = load %struct.optnode*, %struct.optnode** %4, align 8
  %39 = bitcast %struct.optnode* %38 to i8*
  call void @free(i8* noundef %39) #4
  br label %12, !llvm.loop !4

40:                                               ; preds = %12
  %41 = load %struct.optstruct*, %struct.optstruct** %2, align 8
  %42 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.optstruct*, %struct.optstruct** %2, align 8
  %47 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  call void @free(i8* noundef %48) #4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.optstruct*, %struct.optstruct** %2, align 8
  %51 = bitcast %struct.optstruct* %50 to i8*
  call void @free(i8* noundef %51) #4
  br label %52

52:                                               ; preds = %49, %7
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.optstruct* @opt_parse(i32 noundef %0, i8** noundef %1, i8* noundef %2, %struct.option* noundef %3, i8** noundef %4) #0 {
  %6 = alloca %struct.optstruct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.option*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.optstruct*, align 8
  %17 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.option* %3, %struct.option** %10, align 8
  store i8** %4, i8*** %11, align 8
  %18 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 16) #4
  %19 = bitcast i8* %18 to %struct.optstruct*
  store %struct.optstruct* %19, %struct.optstruct** %16, align 8
  %20 = load %struct.optstruct*, %struct.optstruct** %16, align 8
  %21 = icmp ne %struct.optstruct* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store %struct.optstruct* null, %struct.optstruct** %6, align 8
  br label %163

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %23, %81
  store i32 0, i32* %13, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i8**, i8*** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.option*, %struct.option** %10, align 8
  %29 = call i32 @getopt_long(i32 noundef %25, i8** noundef %26, i8* noundef %27, %struct.option* noundef %28, i32* noundef %13)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %82

33:                                               ; preds = %24
  %34 = load i32, i32* %12, align 4
  switch i32 %34, label %50 [
    i32 0, label %35
  ]

35:                                               ; preds = %33
  %36 = load %struct.optstruct*, %struct.optstruct** %16, align 8
  %37 = load %struct.option*, %struct.option** %10, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.option, %struct.option* %37, i64 %39
  %41 = getelementptr inbounds %struct.option, %struct.option* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.option*, %struct.option** %10, align 8
  %44 = load i8**, i8*** %11, align 8
  %45 = call i32 @register_option(%struct.optstruct* noundef %36, i8* noundef %42, i8 noundef signext 0, %struct.option* noundef %43, i8** noundef %44)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load %struct.optstruct*, %struct.optstruct** %16, align 8
  call void @opt_free(%struct.optstruct* noundef %48)
  store %struct.optstruct* null, %struct.optstruct** %6, align 8
  br label %163

49:                                               ; preds = %35
  br label %81

50:                                               ; preds = %33
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i8* @strchr(i8* noundef %51, i32 noundef %52) #5
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %78

55:                                               ; preds = %50
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load %struct.option*, %struct.option** %10, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.option, %struct.option* %59, i64 %61
  %63 = getelementptr inbounds %struct.option, %struct.option* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %17, align 8
  br label %66

65:                                               ; preds = %55
  store i8* null, i8** %17, align 8
  br label %66

66:                                               ; preds = %65, %58
  %67 = load %struct.optstruct*, %struct.optstruct** %16, align 8
  %68 = load i8*, i8** %17, align 8
  %69 = load i32, i32* %12, align 4
  %70 = trunc i32 %69 to i8
  %71 = load %struct.option*, %struct.option** %10, align 8
  %72 = load i8**, i8*** %11, align 8
  %73 = call i32 @register_option(%struct.optstruct* noundef %67, i8* noundef %68, i8 noundef signext %70, %struct.option* noundef %71, i8** noundef %72)
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load %struct.optstruct*, %struct.optstruct** %16, align 8
  call void @opt_free(%struct.optstruct* noundef %76)
  store %struct.optstruct* null, %struct.optstruct** %6, align 8
  br label %163

77:                                               ; preds = %66
  br label %80

78:                                               ; preds = %50
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.optstruct*, %struct.optstruct** %16, align 8
  call void @opt_free(%struct.optstruct* noundef %79)
  store %struct.optstruct* null, %struct.optstruct** %6, align 8
  br label %163

80:                                               ; preds = %77
  br label %81

81:                                               ; preds = %80, %49
  br label %24

82:                                               ; preds = %32
  %83 = load i32, i32* @optind, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %161

86:                                               ; preds = %82
  store i32 0, i32* %15, align 4
  %87 = load i32, i32* @optind, align 4
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %103, %86
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %88
  %93 = load i8**, i8*** %8, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @strlen(i8* noundef %97) #5
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = add i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %15, align 4
  br label %103

103:                                              ; preds = %92
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  br label %88, !llvm.loop !6

106:                                              ; preds = %88
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @optind, align 4
  %109 = sub nsw i32 %107, %108
  %110 = sub nsw i32 %109, 1
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 64
  %115 = sext i32 %114 to i64
  %116 = call noalias i8* @calloc(i64 noundef %115, i64 noundef 1) #4
  %117 = load %struct.optstruct*, %struct.optstruct** %16, align 8
  %118 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load %struct.optstruct*, %struct.optstruct** %16, align 8
  %120 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %106
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %124 = load %struct.optstruct*, %struct.optstruct** %16, align 8
  call void @opt_free(%struct.optstruct* noundef %124)
  store %struct.optstruct* null, %struct.optstruct** %6, align 8
  br label %163

125:                                              ; preds = %106
  %126 = load i32, i32* @optind, align 4
  store i32 %126, i32* %14, align 4
  br label %127

127:                                              ; preds = %157, %125
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %160

131:                                              ; preds = %127
  %132 = load %struct.optstruct*, %struct.optstruct** %16, align 8
  %133 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = load i8**, i8*** %8, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = load i8**, i8*** %8, align 8
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = call i64 @strlen(i8* noundef %144) #5
  %146 = call i8* @strncat(i8* noundef %134, i8* noundef %139, i64 noundef %145) #4
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %7, align 4
  %149 = sub nsw i32 %148, 1
  %150 = icmp ne i32 %147, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %131
  %152 = load %struct.optstruct*, %struct.optstruct** %16, align 8
  %153 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = call i8* @strncat(i8* noundef %154, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 noundef 1) #4
  br label %156

156:                                              ; preds = %151, %131
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  br label %127, !llvm.loop !7

160:                                              ; preds = %127
  br label %161

161:                                              ; preds = %160, %82
  %162 = load %struct.optstruct*, %struct.optstruct** %16, align 8
  store %struct.optstruct* %162, %struct.optstruct** %6, align 8
  br label %163

163:                                              ; preds = %161, %123, %78, %75, %47, %22
  %164 = load %struct.optstruct*, %struct.optstruct** %6, align 8
  ret %struct.optstruct* %164
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

declare dso_local void @mprintf(i8* noundef, ...) #2

declare dso_local i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @register_option(%struct.optstruct* noundef %0, i8* noundef %1, i8 noundef signext %2, %struct.option* noundef %3, i8** noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.optstruct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.option*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.optnode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.optstruct* %0, %struct.optstruct** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8 %2, i8* %9, align 1
  store %struct.option* %3, %struct.option** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i32 0, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %16 = load i8, i8* %9, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %45, %18
  %20 = load %struct.option*, %struct.option** %10, align 8
  %21 = load i32, i32* %13, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.option, %struct.option* %20, i64 %22
  %24 = getelementptr inbounds %struct.option, %struct.option* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %19
  %28 = load %struct.option*, %struct.option** %10, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.option, %struct.option* %28, i64 %30
  %32 = getelementptr inbounds %struct.option, %struct.option* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i8, i8* %9, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %27
  %38 = load %struct.option*, %struct.option** %10, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.option, %struct.option* %38, i64 %40
  %42 = getelementptr inbounds %struct.option, %struct.option* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %15, align 8
  br label %48

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %13, align 4
  br label %19, !llvm.loop !8

48:                                               ; preds = %37, %19
  br label %51

49:                                               ; preds = %5
  %50 = load i8*, i8** %8, align 8
  store i8* %50, i8** %15, align 8
  br label %51

51:                                               ; preds = %49, %48
  %52 = load i8*, i8** %15, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i8, i8* %9, align 1
  %56 = sext i8 %55 to i32
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 noundef %56)
  store i32 -1, i32* %6, align 4
  br label %162

57:                                               ; preds = %51
  %58 = load i8**, i8*** %11, align 8
  %59 = icmp ne i8** %58, null
  br i1 %59, label %60, label %96

60:                                               ; preds = %57
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %79, %60
  %62 = load i8**, i8*** %11, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %82

68:                                               ; preds = %61
  %69 = load i8**, i8*** %11, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load i8*, i8** %15, align 8
  %75 = call i32 @strcmp(i8* noundef %73, i8* noundef %74) #5
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %68
  store i32 1, i32* %14, align 4
  br label %78

78:                                               ; preds = %77, %68
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %61, !llvm.loop !9

82:                                               ; preds = %61
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %82
  %86 = load i8, i8* %9, align 1
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i8*, i8** %15, align 8
  %90 = load i8, i8* %9, align 1
  %91 = sext i8 %90 to i32
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* noundef %89, i32 noundef %91)
  br label %94

92:                                               ; preds = %85
  %93 = load i8*, i8** %15, align 8
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* noundef %93)
  br label %94

94:                                               ; preds = %92, %88
  store i32 0, i32* %6, align 4
  br label %162

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95, %57
  %97 = call noalias i8* @malloc(i64 noundef 32) #4
  %98 = bitcast i8* %97 to %struct.optnode*
  store %struct.optnode* %98, %struct.optnode** %12, align 8
  %99 = load %struct.optnode*, %struct.optnode** %12, align 8
  %100 = icmp ne %struct.optnode* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %162

102:                                              ; preds = %96
  %103 = load i8, i8* %9, align 1
  %104 = load %struct.optnode*, %struct.optnode** %12, align 8
  %105 = getelementptr inbounds %struct.optnode, %struct.optnode* %104, i32 0, i32 0
  store i8 %103, i8* %105, align 8
  %106 = load i8*, i8** @optarg, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %128

108:                                              ; preds = %102
  %109 = load i8*, i8** @optarg, align 8
  %110 = call i64 @strlen(i8* noundef %109) #5
  %111 = add i64 %110, 1
  %112 = call noalias i8* @malloc(i64 noundef %111) #4
  %113 = load %struct.optnode*, %struct.optnode** %12, align 8
  %114 = getelementptr inbounds %struct.optnode, %struct.optnode* %113, i32 0, i32 2
  store i8* %112, i8** %114, align 8
  %115 = load %struct.optnode*, %struct.optnode** %12, align 8
  %116 = getelementptr inbounds %struct.optnode, %struct.optnode* %115, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %108
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  %120 = load %struct.optnode*, %struct.optnode** %12, align 8
  %121 = bitcast %struct.optnode* %120 to i8*
  call void @free(i8* noundef %121) #4
  store i32 -1, i32* %6, align 4
  br label %162

122:                                              ; preds = %108
  %123 = load %struct.optnode*, %struct.optnode** %12, align 8
  %124 = getelementptr inbounds %struct.optnode, %struct.optnode* %123, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  %126 = load i8*, i8** @optarg, align 8
  %127 = call i8* @strcpy(i8* noundef %125, i8* noundef %126) #4
  br label %131

128:                                              ; preds = %102
  %129 = load %struct.optnode*, %struct.optnode** %12, align 8
  %130 = getelementptr inbounds %struct.optnode, %struct.optnode* %129, i32 0, i32 2
  store i8* null, i8** %130, align 8
  br label %131

131:                                              ; preds = %128, %122
  %132 = load i8*, i8** %15, align 8
  %133 = call i64 @strlen(i8* noundef %132) #5
  %134 = add i64 %133, 1
  %135 = call noalias i8* @malloc(i64 noundef %134) #4
  %136 = load %struct.optnode*, %struct.optnode** %12, align 8
  %137 = getelementptr inbounds %struct.optnode, %struct.optnode* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  %138 = load %struct.optnode*, %struct.optnode** %12, align 8
  %139 = getelementptr inbounds %struct.optnode, %struct.optnode* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %148, label %142

142:                                              ; preds = %131
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  %143 = load %struct.optnode*, %struct.optnode** %12, align 8
  %144 = getelementptr inbounds %struct.optnode, %struct.optnode* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  call void @free(i8* noundef %145) #4
  %146 = load %struct.optnode*, %struct.optnode** %12, align 8
  %147 = bitcast %struct.optnode* %146 to i8*
  call void @free(i8* noundef %147) #4
  store i32 -1, i32* %6, align 4
  br label %162

148:                                              ; preds = %131
  %149 = load %struct.optnode*, %struct.optnode** %12, align 8
  %150 = getelementptr inbounds %struct.optnode, %struct.optnode* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = load i8*, i8** %15, align 8
  %153 = call i8* @strcpy(i8* noundef %151, i8* noundef %152) #4
  %154 = load %struct.optstruct*, %struct.optstruct** %7, align 8
  %155 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %154, i32 0, i32 0
  %156 = load %struct.optnode*, %struct.optnode** %155, align 8
  %157 = load %struct.optnode*, %struct.optnode** %12, align 8
  %158 = getelementptr inbounds %struct.optnode, %struct.optnode* %157, i32 0, i32 3
  store %struct.optnode* %156, %struct.optnode** %158, align 8
  %159 = load %struct.optnode*, %struct.optnode** %12, align 8
  %160 = load %struct.optstruct*, %struct.optstruct** %7, align 8
  %161 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %160, i32 0, i32 0
  store %struct.optnode* %159, %struct.optnode** %161, align 8
  store i32 0, i32* %6, align 4
  br label %162

162:                                              ; preds = %148, %142, %119, %101, %94, %54
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @opt_check(%struct.optstruct* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.optstruct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.optnode*, align 8
  store %struct.optstruct* %0, %struct.optstruct** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.optstruct*, %struct.optstruct** %4, align 8
  %8 = icmp ne %struct.optstruct* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %35

10:                                               ; preds = %2
  %11 = load %struct.optstruct*, %struct.optstruct** %4, align 8
  %12 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %11, i32 0, i32 0
  %13 = load %struct.optnode*, %struct.optnode** %12, align 8
  store %struct.optnode* %13, %struct.optnode** %6, align 8
  br label %14

14:                                               ; preds = %30, %10
  %15 = load %struct.optnode*, %struct.optnode** %6, align 8
  %16 = icmp ne %struct.optnode* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load %struct.optnode*, %struct.optnode** %6, align 8
  %19 = getelementptr inbounds %struct.optnode, %struct.optnode* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.optnode*, %struct.optnode** %6, align 8
  %24 = getelementptr inbounds %struct.optnode, %struct.optnode* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strcmp(i8* noundef %25, i8* noundef %26) #5
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %35

30:                                               ; preds = %22, %17
  %31 = load %struct.optnode*, %struct.optnode** %6, align 8
  %32 = getelementptr inbounds %struct.optnode, %struct.optnode* %31, i32 0, i32 3
  %33 = load %struct.optnode*, %struct.optnode** %32, align 8
  store %struct.optnode* %33, %struct.optnode** %6, align 8
  br label %14, !llvm.loop !10

34:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %29, %9
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @opt_arg(%struct.optstruct* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.optstruct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.optnode*, align 8
  store %struct.optstruct* %0, %struct.optstruct** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.optstruct*, %struct.optstruct** %4, align 8
  %8 = icmp ne %struct.optstruct* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %38

10:                                               ; preds = %2
  %11 = load %struct.optstruct*, %struct.optstruct** %4, align 8
  %12 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %11, i32 0, i32 0
  %13 = load %struct.optnode*, %struct.optnode** %12, align 8
  store %struct.optnode* %13, %struct.optnode** %6, align 8
  br label %14

14:                                               ; preds = %33, %10
  %15 = load %struct.optnode*, %struct.optnode** %6, align 8
  %16 = icmp ne %struct.optnode* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %14
  %18 = load %struct.optnode*, %struct.optnode** %6, align 8
  %19 = getelementptr inbounds %struct.optnode, %struct.optnode* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.optnode*, %struct.optnode** %6, align 8
  %24 = getelementptr inbounds %struct.optnode, %struct.optnode* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strcmp(i8* noundef %25, i8* noundef %26) #5
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load %struct.optnode*, %struct.optnode** %6, align 8
  %31 = getelementptr inbounds %struct.optnode, %struct.optnode* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %3, align 8
  br label %38

33:                                               ; preds = %22, %17
  %34 = load %struct.optnode*, %struct.optnode** %6, align 8
  %35 = getelementptr inbounds %struct.optnode, %struct.optnode* %34, i32 0, i32 3
  %36 = load %struct.optnode*, %struct.optnode** %35, align 8
  store %struct.optnode* %36, %struct.optnode** %6, align 8
  br label %14, !llvm.loop !11

37:                                               ; preds = %14
  store i8* null, i8** %3, align 8
  br label %38

38:                                               ; preds = %37, %29, %9
  %39 = load i8*, i8** %3, align 8
  ret i8* %39
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @opt_firstarg(%struct.optstruct* noundef %0, i8* noundef %1, %struct.optnode** noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.optstruct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.optnode**, align 8
  %8 = alloca %struct.optnode*, align 8
  store %struct.optstruct* %0, %struct.optstruct** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.optnode** %2, %struct.optnode*** %7, align 8
  %9 = load %struct.optstruct*, %struct.optstruct** %5, align 8
  %10 = icmp ne %struct.optstruct* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %43

12:                                               ; preds = %3
  %13 = load %struct.optstruct*, %struct.optstruct** %5, align 8
  %14 = getelementptr inbounds %struct.optstruct, %struct.optstruct* %13, i32 0, i32 0
  %15 = load %struct.optnode*, %struct.optnode** %14, align 8
  store %struct.optnode* %15, %struct.optnode** %8, align 8
  br label %16

16:                                               ; preds = %37, %12
  %17 = load %struct.optnode*, %struct.optnode** %8, align 8
  %18 = icmp ne %struct.optnode* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = load %struct.optnode*, %struct.optnode** %8, align 8
  %21 = getelementptr inbounds %struct.optnode, %struct.optnode* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.optnode*, %struct.optnode** %8, align 8
  %26 = getelementptr inbounds %struct.optnode, %struct.optnode* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @strcmp(i8* noundef %27, i8* noundef %28) #5
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %24
  %32 = load %struct.optnode*, %struct.optnode** %8, align 8
  %33 = load %struct.optnode**, %struct.optnode*** %7, align 8
  store %struct.optnode* %32, %struct.optnode** %33, align 8
  %34 = load %struct.optnode*, %struct.optnode** %8, align 8
  %35 = getelementptr inbounds %struct.optnode, %struct.optnode* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %4, align 8
  br label %43

37:                                               ; preds = %24, %19
  %38 = load %struct.optnode*, %struct.optnode** %8, align 8
  %39 = getelementptr inbounds %struct.optnode, %struct.optnode* %38, i32 0, i32 3
  %40 = load %struct.optnode*, %struct.optnode** %39, align 8
  store %struct.optnode* %40, %struct.optnode** %8, align 8
  br label %16, !llvm.loop !12

41:                                               ; preds = %16
  %42 = load %struct.optnode**, %struct.optnode*** %7, align 8
  store %struct.optnode* null, %struct.optnode** %42, align 8
  store i8* null, i8** %4, align 8
  br label %43

43:                                               ; preds = %41, %31, %11
  %44 = load i8*, i8** %4, align 8
  ret i8* %44
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @opt_nextarg(%struct.optnode** noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.optnode**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.optnode*, align 8
  store %struct.optnode** %0, %struct.optnode*** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.optnode**, %struct.optnode*** %4, align 8
  %8 = icmp ne %struct.optnode** %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.optnode**, %struct.optnode*** %4, align 8
  %11 = load %struct.optnode*, %struct.optnode** %10, align 8
  %12 = icmp ne %struct.optnode* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %2
  call void (i8*, ...) @mprintf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %46

14:                                               ; preds = %9
  %15 = load %struct.optnode**, %struct.optnode*** %4, align 8
  %16 = load %struct.optnode*, %struct.optnode** %15, align 8
  %17 = getelementptr inbounds %struct.optnode, %struct.optnode* %16, i32 0, i32 3
  %18 = load %struct.optnode*, %struct.optnode** %17, align 8
  store %struct.optnode* %18, %struct.optnode** %6, align 8
  br label %19

19:                                               ; preds = %40, %14
  %20 = load %struct.optnode*, %struct.optnode** %6, align 8
  %21 = icmp ne %struct.optnode* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %19
  %23 = load %struct.optnode*, %struct.optnode** %6, align 8
  %24 = getelementptr inbounds %struct.optnode, %struct.optnode* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.optnode*, %struct.optnode** %6, align 8
  %29 = getelementptr inbounds %struct.optnode, %struct.optnode* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @strcmp(i8* noundef %30, i8* noundef %31) #5
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = load %struct.optnode*, %struct.optnode** %6, align 8
  %36 = load %struct.optnode**, %struct.optnode*** %4, align 8
  store %struct.optnode* %35, %struct.optnode** %36, align 8
  %37 = load %struct.optnode*, %struct.optnode** %6, align 8
  %38 = getelementptr inbounds %struct.optnode, %struct.optnode* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %3, align 8
  br label %46

40:                                               ; preds = %27, %22
  %41 = load %struct.optnode*, %struct.optnode** %6, align 8
  %42 = getelementptr inbounds %struct.optnode, %struct.optnode* %41, i32 0, i32 3
  %43 = load %struct.optnode*, %struct.optnode** %42, align 8
  store %struct.optnode* %43, %struct.optnode** %6, align 8
  br label %19, !llvm.loop !13

44:                                               ; preds = %19
  %45 = load %struct.optnode**, %struct.optnode*** %4, align 8
  store %struct.optnode* null, %struct.optnode** %45, align 8
  store i8* null, i8** %3, align 8
  br label %46

46:                                               ; preds = %44, %34, %13
  %47 = load i8*, i8** %3, align 8
  ret i8* %47
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
