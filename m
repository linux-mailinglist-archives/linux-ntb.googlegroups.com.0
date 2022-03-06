Return-Path: <linux-ntb+bncBCZYX57R2AJRBHF4SSIQMGQEHJRUSYQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id AF51A4CEDCA
	for <lists+linux-ntb@lfdr.de>; Sun,  6 Mar 2022 21:48:29 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id c1-20020a9d67c1000000b005b2353e2c03sf1060792otn.8
        for <lists+linux-ntb@lfdr.de>; Sun, 06 Mar 2022 12:48:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646599708; cv=pass;
        d=google.com; s=arc-20160816;
        b=sGi28BRjmCzbCTlAE/ijludO5AnSVgtX9305bh3plVkTpPsSp/qTkPBpDF5FR9E0Io
         ST30VU3A9a7k2OUX9pOJaX32XivlfPvbsKfIBWwozDxRD1q9JO4I02/zEzOv2nagXsvh
         nu4bwWNEMxiSKWCf8ehg7N/D8pVlrXrHp6Nd1T4owhR+1mxbNxBq+w0d3OguBheN3hsi
         oeqCIHt5jhBk7gx0Rg+W+lunF4Q2I23zLxe7O2C7ptKhjnjhlJKsoswC/ZfZVdIxUv/s
         HT+Hp8iD9MeUiAXQNbr/Su/Gn1Ag0hdHNGZzoHqBivozeFzwJav9/4wyAWPWQ9JVbGuG
         HgEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=Xlfr7ZRr6Y9PGm33F3eN8uMq1OGsmCslNWJ6eXWirDQ=;
        b=FUKxBKb1XgKrfzRx2HFOo8dlrPPO0+7J49K3GP6Pk4sEwIojjNTBmKL0nHC7zAqRMB
         x68II2raXSDjj7MlynnWoh0rrExPL7YrOOXUJte2KND1Te1jUw/CaKanT1rbQPdCM7Gr
         bbnf4MRox4bJjku80OZ7OLvYHu7U8FFgXeBG1sj1Mm832daieAQK3vwwylLh47mBDfik
         U3lCyQ0BDTaiaph/mHCxn863g8XYohRCjGDCsf597WjgUbbMVbb98ivYsEXfPMXCllam
         rkgE9FvoL/EWcjX12Zo9W/3Ubp/jHKLYqZ6XIWsRGlGKQCXclb1a1tgdDoxZw/m3qQGh
         KEHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=A75cfaLr;
       spf=pass (google.com: domain of valeriegrey67@gmail.com designates 2607:f8b0:4864:20::1143 as permitted sender) smtp.mailfrom=valeriegrey67@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xlfr7ZRr6Y9PGm33F3eN8uMq1OGsmCslNWJ6eXWirDQ=;
        b=F6a0irP0XqUxo6c1heA+fNsKbTZJMDoBCChdyahCb2aO2NtoORCd4iarTNHLC9P6M9
         AtDZDxei1oYFwYXtgZMKL+iyMzWzxW27P/PhmSN0h6Ll4KZOTzcizDvV68xWeJdM/6X1
         F3b2ut7xJsB21Ir2qqu35OBXQwWJO9Bg6n9xnEfYSvKSMT+2OkBz9HT+xNaKhksX5OTl
         cYzershPLVnqllpv/i8VOHgTqqI3xY0Qnee96CN3GpCxO1YQ+g/moNp1yuh8jcsOoJ5N
         vZPrBsxLTjEtpcgQDq39ZT9zh9lZ9DBrk/A1+e6bwfy1nrY0dmmMLnCjCFj4gbLRVL0a
         rYgQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xlfr7ZRr6Y9PGm33F3eN8uMq1OGsmCslNWJ6eXWirDQ=;
        b=Ge+PAxIyn7bTYH3LpG6OUIhYRz1dwXLiV0t+SDxQdSG0NgAMLQ9NfyvK/hE8TGaYQ7
         i2/L8HvOj8rhrlg3ChR6zJ8QG3/dKpQEOL3RIsEh3VXo9nOsnYDv45NP4nZLb/5zsMFB
         GWFarvrL89w2fFmERFamZ/zts8kWx/GNJZU+gzQnF43eojRWAUDHbYRbzX9N4Drok43B
         A28PsoweP/4oNsbkbt6MLIWOaB68rh//vb8eM8XSQi/WSVQ18zlS0JMI+P9ePvBTR/dL
         r5JUZynO9ImjtN1cdVCSLmIZnlZASP2BlxuVOGaS1r8WRA0CgHQ94SoFAgdGESvKZF1+
         LmDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xlfr7ZRr6Y9PGm33F3eN8uMq1OGsmCslNWJ6eXWirDQ=;
        b=EkYXWVpa8sfn1G1g8Oyrd/BX1EaC+RLRUCJykk6bQo15J3xfbbNc+usRK2NyLtUARa
         NVmUJ6FUs1ycZMN2o0vPvv7x8LmmoaQko7KTyjPkGHcVJ6k7qwDKr351yfWeGCKb4wiT
         febsotOehuOGZ1XgHBUZrBxmVeGk/5F62ab8al61FbcSuXYWICB8vnbPdxu73UUIqsQM
         yaNcj0myRl7IUlH05jA4dyREEMEn8NVRnNa/bxB1rf2/MdcovsVweKm6kHNg5+GwONzf
         g2T5z39s8Ikr+qLeebpOJhzFLuRPcQ37liQfbwhj+jUnZfqW14lqTX63vrPOgPBMoCtr
         JRVw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532L0EB6qqgT74w/IiVk6FIvUpz12UfbsGVNpIfAzglxDL4/o1dM
	s+/MrwZTHpEZ875FqApbBr0=
X-Google-Smtp-Source: ABdhPJyGcW9YxTvphjirfwqaFETdfugdMm3DxgATjmUuSCbTq+v2Le8vNHxfvYrF1L7gCMiDj2E8hw==
X-Received: by 2002:a05:6870:1708:b0:da:14a6:b333 with SMTP id h8-20020a056870170800b000da14a6b333mr3599769oae.49.1646599708205;
        Sun, 06 Mar 2022 12:48:28 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:60b:0:b0:594:e834:1e36 with SMTP id 11-20020a9d060b000000b00594e8341e36ls2750795otn.10.gmail;
 Sun, 06 Mar 2022 12:48:27 -0800 (PST)
X-Received: by 2002:a05:6830:1047:b0:5b2:3173:d781 with SMTP id b7-20020a056830104700b005b23173d781mr1278077otp.178.1646599707920;
        Sun, 06 Mar 2022 12:48:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646599707; cv=none;
        d=google.com; s=arc-20160816;
        b=pyMuzRL+gBi/hPswIOiW+3Cm6++xiSn7B56ZwmBH0dowW2flBgRJM7WAiypawLzTcg
         s2azt1vNEmwcjQdu8Cezz1PHlYvfbFXt9KnwhEgah1Fx9eVbDtP3F2QpaHo+TRLOcsR2
         7kCFL9GEbKSlMh1LwULllwuwg/RJnQMbSWWQNrt9sbBN0s/q0Ak0ssT3YkXFbzTFSdg7
         38ImH8Q1Y1qLgEwB1d1R2ZOmGohgrD7lSpdoQ1rFrG935Tc2z03QH1i1GTBpoPbDQpLp
         UBG0944PE7vx3djjlGQivqgwL4bhhphvzjXlfDUbgyJnQmkM/dhcpnqXzhjUFrKdC8RU
         4Q3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=+yU8wy12T3spHsGM1vpA97kDdqLW53wEOn2Cjq3j/4I=;
        b=nByecf+/3siwlDDUuDP8IJq265nQ0sFEQln8eC/M7yW9XvhoknUgtmWT+0B5Y9iQwh
         SIF4CseGgCuTSA9AaeXt0tm3TdKc+X6TUlrrNeC2CI5PJiCGv59tNSdMKm+2EyYOlOhb
         YGDByHqPi/IcNC5Om1UpiK2tXSWlz+JLECUisaV1LOJeESgCnMknfzzUVkNK4chgWOLR
         4LewPRw4UkvyO5q9MbheHWCNjHlsceKeho0ilW4GZWGdvLcMxy42jmChBXaIcuksAg/q
         fTNNbDZetiiCpUZ6ASLok9+b/1juD2IcFCoTRgC0Yxb2MyXeK16qqITtCbr/DxHcfU7C
         3dRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=A75cfaLr;
       spf=pass (google.com: domain of valeriegrey67@gmail.com designates 2607:f8b0:4864:20::1143 as permitted sender) smtp.mailfrom=valeriegrey67@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yw1-x1143.google.com (mail-yw1-x1143.google.com. [2607:f8b0:4864:20::1143])
        by gmr-mx.google.com with ESMTPS id p12-20020a9d4e0c000000b005afaa717a2bsi1359385otf.2.2022.03.06.12.48.27
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Mar 2022 12:48:27 -0800 (PST)
Received-SPF: pass (google.com: domain of valeriegrey67@gmail.com designates 2607:f8b0:4864:20::1143 as permitted sender) client-ip=2607:f8b0:4864:20::1143;
Received: by mail-yw1-x1143.google.com with SMTP id 00721157ae682-2dc585dbb02so79826407b3.13
        for <linux-ntb@googlegroups.com>; Sun, 06 Mar 2022 12:48:27 -0800 (PST)
X-Received: by 2002:a81:7c04:0:b0:2d8:2fe7:73f9 with SMTP id
 x4-20020a817c04000000b002d82fe773f9mr6342434ywc.407.1646599707538; Sun, 06
 Mar 2022 12:48:27 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7010:2244:b0:210:8fb0:8e52 with HTTP; Sun, 6 Mar 2022
 12:48:27 -0800 (PST)
Reply-To: braydensean25@gmail.com
From: Sean Brayden <valeriegrey67@gmail.com>
Date: Sun, 6 Mar 2022 21:48:27 +0100
Message-ID: <CAM0sDc_PEuV3n+8hNwATDyp5HHOiYHPjf3W5Lijbo5S_krEBkg@mail.gmail.com>
Subject: OFFER
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: valeriegrey67@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=A75cfaLr;       spf=pass
 (google.com: domain of valeriegrey67@gmail.com designates 2607:f8b0:4864:20::1143
 as permitted sender) smtp.mailfrom=valeriegrey67@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list linux-ntb@googlegroups.com; contact linux-ntb+owners@googlegroups.com
List-ID: <linux-ntb.googlegroups.com>
X-Spam-Checked-In-Group: linux-ntb@googlegroups.com
X-Google-Group-Id: 859317214201
List-Post: <https://groups.google.com/group/linux-ntb/post>, <mailto:linux-ntb@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:linux-ntb+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/linux-ntb
List-Subscribe: <https://groups.google.com/group/linux-ntb/subscribe>, <mailto:linux-ntb+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+859317214201+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/linux-ntb/subscribe>

Dear friend,

I have a business proposal which I would like to handle with you.
Fifty five million USD is involved and be rest assured that everything
is legal and risk free.
Kindly indicate your interest so as to enable me give you more details
of the proposal.

Thank you in anticipation as I look forward to reading your reply.

Sean Brayden.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAM0sDc_PEuV3n%2B8hNwATDyp5HHOiYHPjf3W5Lijbo5S_krEBkg%40mail.gmail.com.
