Return-Path: <linux-ntb+bncBCHOPY7NVYCRBHNM4SOAMGQEEI73HWY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-x113b.google.com (mail-yw1-x113b.google.com [IPv6:2607:f8b0:4864:20::113b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5478064C115
	for <lists+linux-ntb@lfdr.de>; Wed, 14 Dec 2022 01:17:35 +0100 (CET)
Received: by mail-yw1-x113b.google.com with SMTP id 00721157ae682-411c31a2c20sf117413487b3.12
        for <lists+linux-ntb@lfdr.de>; Tue, 13 Dec 2022 16:17:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1670977054; cv=pass;
        d=google.com; s=arc-20160816;
        b=gZ63htq1lo7qJa4ISLQ3EW/TsOJ7hbPpPB4m7DOStYJll5bKsE3G67o8finPWujRX6
         kHPqNRAUp0T/3Bj3IW+dvnEKH+MPe1xN/U4Z1EqpUJhnbd5XHYUeHamjmIq+iaSq0PBf
         cayQe+p+0dA24livB5QsqTBMLmZfoauglNcRE3XiXJYHKM+vOIc2Sp5plJa2CySgVjTN
         qsI/s61w5OqOYqxSag4ZI6ZUZ84eEvDgOX8k/jbSd9ktkUqtNzKBJExt0A0hMqSgJXog
         aMVV6A405j0moIqD1aNSx6Lfo9C0mCFElqKTmdYjRTs1vFyg2sMVeJG2WHXnERAV5kCf
         clFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=hqC3SMFuumaxPEGLqHoUSsAXtr9/6LoDzpbOziA79Kk=;
        b=Ds9h1ZZkQ/RVE3xJH+5TY9c0mJqL4zMdZ4+bjT7jEAAOBmJCs3gcCmi/nuwkyKpRpf
         Fe3wETE33SLaexFhB/rHnhZVuqJGrH12L30CyAnUp4OQSRAiPiuUpuDte1ylkWBmaKD0
         Ytbc6bAniKFfqfpAu9B7YScvhTYlUc519F+zGXkS+HQ+oVbpduts+mwUdy9PsERiTvE0
         J/RJZAwdcYdujegv2TDns77LzRo1rc+J2f0NFho11UUl8fLL0H25v1hksNKtU4+rOANz
         putRzIZckJZAJaOzeU5U/acyf7tJU0CqCksa5CQZcOcoJaqV0ibA0O74IJO1titazeoB
         2e3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="Y7/HsAyu";
       spf=pass (google.com: domain of lznuaa@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=lznuaa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hqC3SMFuumaxPEGLqHoUSsAXtr9/6LoDzpbOziA79Kk=;
        b=Bu8BXOXzKjJFIpyWG/oDLDDoKm0NOs4qtNzMVwTpotkfI+a79WSdMn0e/QlBMHctOd
         0PYar3MhA9bCzrQXnLy2Z1011xduuIN1MyVeOJ2h4rvlV5tOdVIYfk6Zwe4SPH5IVwuV
         BGGaCUQLDdHXxNvIcWaI18AlPnowL113gLdFwLN4nQ2kjW6ubjVittY89rE/OV2eLwz5
         4zktDBVxMDLUBLGbZKbY4A5XwERhADkPAe8MQD07zKDmbC5nILpUQrmCdR3WiU22/iEY
         SL8X8k05QB456rRKH+OLkyPDg9hRUxydKNlheHXIZKCgN0f2GWZ0mdJklGyiGd0VS3LT
         +YGQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hqC3SMFuumaxPEGLqHoUSsAXtr9/6LoDzpbOziA79Kk=;
        b=kVM69pMFbkkLw2wzI0m1CQ48ggGIGM2eA/J2ESbK6wt097UseA1lqWfiNiIvKJQ+zI
         vVgV4f36w+5IrA1dOpyb10VVxqyBBU63ZUCyjpCPN7kGEZO5DkYScB1lWgvwaoivUGJ4
         anApmIpPm+QXTiEDepmrc8HTer2hxaH+6GkcUvMshjXe5MQ06we7J4gKmFObozzTLT1H
         Y0DVhniKiqRzbbd+AO8/6TvSmy1IfVYdz305M2RMrsThhyePdNSl5n5LWLzvbGC9EQfE
         fRPIJo9herhFjmoaTQkMwp09tX49NjVtOt9ktXMYVBkBZryOtZE18GBhWyHJ2H8snOWt
         XOKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hqC3SMFuumaxPEGLqHoUSsAXtr9/6LoDzpbOziA79Kk=;
        b=hMMz74jP+Zcmuzhsq8fXR0SjrQnAo6sMcBdCA1mxjqOH2KxjrueiRATCAZVsGcW4lf
         DpxoklN5B09NfpgJR7a6LSrm6cyUYirv+E/KOSsOFt4cyYQmmBulGOrJv/9qFR3CXfaI
         oEoCqhDBZFaQmyUcmFy4b+ZptmZAW419zPA94kLlNzzvW7Q/Txy2D0zm+jArG3ItUWyb
         +ddYu5MfxyWv7PQAc/fE29z07zcfEDVaV02fMsGaLQKA5P4fCfDmljR2n3K+tsUwEEo1
         t1ghu9f/QQtEkYiDmrtkiJFt+0CcKSEFfj4bRALPxGO4Ujx13DTIiIMeyquQzdnEYyXm
         Xz5A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANoB5pkJyrzB2c6cq5Lk8uYlz4m9EPXa5Dv6HTsMktlNk7/OFnI5o+bw
	Oup3dQw5E68SgqD/z33mwdU=
X-Google-Smtp-Source: AA0mqf5NtibN0sYoXpLwQISxfYZonH0q8d54uXRjilDfwjl6Uuk9QkkZOJ8PnBpt4RyvE+RVVHg6/A==
X-Received: by 2002:a25:2542:0:b0:6f1:c106:bb8b with SMTP id l63-20020a252542000000b006f1c106bb8bmr60103833ybl.602.1670977054011;
        Tue, 13 Dec 2022 16:17:34 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a81:9845:0:b0:3f6:22d4:3288 with SMTP id p66-20020a819845000000b003f622d43288ls11127635ywg.11.-pod-prod-gmail;
 Tue, 13 Dec 2022 16:17:33 -0800 (PST)
X-Received: by 2002:a81:1c4e:0:b0:36c:9b7c:f9f3 with SMTP id c75-20020a811c4e000000b0036c9b7cf9f3mr19914712ywc.0.1670977053417;
        Tue, 13 Dec 2022 16:17:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1670977053; cv=none;
        d=google.com; s=arc-20160816;
        b=j+BH3ad+M60DwgAeS2oaQ8xTX+lqqfLT17AreZTRKant1qpmX0LRXhnxQCq4qjebL0
         5Cq03xlh2kyWXCUEpmfQM/KdeEEneAZmjfcWrGSHpn5vfSJ9IT06mPlElDtTcrhTS5q+
         /7S9zB7WbfRqLKxpbrK7j0nkh8jGcJQ7S1h/16bvtibzvLNUqpR05Nfxl2WllgLEMI4/
         5FH8xpui/laDNd99FIjH8Y2IDQ87k9EuUBBx0LagGiL0x3vIiNgj5fUPA4p9wY9Vfy0r
         TKeV0Yb9ZxYiNUX69yUvkTuX6jWW1YmmXHjvmNRrwAXAK3sA/jvM1KEkLsiEFwsT0+By
         JWDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=M5dWAHnqaOkEoZjphB6BggjsIRL63gkv8xTUjhFj6Ek=;
        b=Ab+7SNP+Ubr0v0nj+j01vzbrL4hL8KIGuFF/vzkDEdnmbRjettLXxXqXUO99gz7ybU
         5sbZQHhGwWnpcT8Zr6FnZs/g+dcxJIVflbf2Jv+W/5GS5veHKKj7DHoTJm0GGCIdKrAY
         VNbG86cL2LmpiP3+9Cpy+BuhHyI/0ZTJl1VgYJHmh3lOBBJ19nSuKKk3KAXdJPsB6And
         OyfCy+adx2nz3onzetYQmAF5e9RzogcEOkMP3uGXljyTPTVbVbm8qIvNsVI2DFHla0DY
         13OF7xA8Id9aXfVR/xNHQ7BRKHHKgagafD4NBLopE25sQg9vtx/TtlTqcAYdsi590nkT
         SYWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="Y7/HsAyu";
       spf=pass (google.com: domain of lznuaa@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=lznuaa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id dg7-20020a05690c0fc700b0035786664d22si1658863ywb.1.2022.12.13.16.17.33
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 16:17:33 -0800 (PST)
Received-SPF: pass (google.com: domain of lznuaa@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id 142so964075pga.1
        for <linux-ntb@googlegroups.com>; Tue, 13 Dec 2022 16:17:33 -0800 (PST)
X-Received: by 2002:a63:4424:0:b0:477:96e2:9065 with SMTP id
 r36-20020a634424000000b0047796e29065mr70225522pga.533.1670977052900; Tue, 13
 Dec 2022 16:17:32 -0800 (PST)
MIME-Version: 1.0
References: <20220222162355.32369-4-Frank.Li@nxp.com> <20221214000848.GA221546@bhelgaas>
In-Reply-To: <20221214000848.GA221546@bhelgaas>
From: Zhi Li <lznuaa@gmail.com>
Date: Tue, 13 Dec 2022 18:17:21 -0600
Message-ID: <CAHrpEqSGySHDET3YPu3czzoMBmCRJsgGgU4s3GWWbtruFLVHaA@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] PCI: endpoint: Support NTB transfer between RC and EP
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Frank Li <Frank.Li@nxp.com>, allenbh@gmail.com, dave.jiang@intel.com, 
	gustavo.pimentel@synopsys.com, hongxing.zhu@nxp.com, jdmason@kudzu.us, 
	jingoohan1@gmail.com, kishon@kernel.org, kw@linux.com, 
	linux-ntb@googlegroups.com, linux-pci@vger.kernel.org, 
	lorenzo.pieralisi@arm.com
Content-Type: multipart/alternative; boundary="000000000000aa842c05efbea96f"
X-Original-Sender: lznuaa@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b="Y7/HsAyu";       spf=pass
 (google.com: domain of lznuaa@gmail.com designates 2607:f8b0:4864:20::531 as
 permitted sender) smtp.mailfrom=lznuaa@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000aa842c05efbea96f
Content-Type: text/plain; charset="UTF-8"

On Tue, Dec 13, 2022 at 6:08 PM Bjorn Helgaas <helgaas@kernel.org> wrote:

> On Tue, Feb 22, 2022 at 10:23:54AM -0600, Frank Li wrote:
>
> > + * +--------------------------------------------------+ Base
> > + * |                                                  |
> > + * |                                                  |
> > + * |                                                  |
> > + * |          Common Control Register                 |
> > + * |                                                  |
> > + * |                                                  |
> > + * |                                                  |
> > + * +-----------------------+--------------------------+ Base+span_offset
> > + * |                       |                          |
> > + * |    Peer Span Space    |    Span Space            |
> > + * |                       |                          |
> > + * |                       |                          |
> > + * +-----------------------+--------------------------+ Base+span_offset
> > + * |                       |                          |     +span_count
> * 4
> > + * |                       |                          |
> > + * |     Span Space        |   Peer Span Space        |
> > + * |                       |                          |
> > + * +-----------------------+--------------------------+
>
> Are these comments supposed to say *spad*, i.e., scratchpad space,
> instead of "span", to correspond with spad_offset and spad_count
> below?


Strange, I received some of your comments on the very old patches.
Does it come from an auto machine?

best regards
Frank Li



>
> > +struct epf_ntb_ctrl {
> > +     u32     command;
> > +     u32     argument;
> > +     u16     command_status;
> > +     u16     link_status;
> > +     u32     topology;
> > +     u64     addr;
> > +     u64     size;
> > +     u32     num_mws;
> > +     u32     reserved;
> > +     u32     spad_offset;
> > +     u32     spad_count;
> > +     u32     db_entry_size;
> > +     u32     db_data[MAX_DB_COUNT];
> > +     u32     db_offset[MAX_DB_COUNT];
> > +} __packed;
>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAHrpEqSGySHDET3YPu3czzoMBmCRJsgGgU4s3GWWbtruFLVHaA%40mail.gmail.com.

--000000000000aa842c05efbea96f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdiBkaXI9Imx0ciI+PGRpdiBjbGFzcz0iZ21haWxfZGVmYXVsdCIg
c3R5bGU9ImZvbnQtZmFtaWx5Om1vbm9zcGFjZSI+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OkFy
aWFsLEhlbHZldGljYSxzYW5zLXNlcmlmIj5PbiBUdWUsIERlYyAxMywgMjAyMiBhdCA2OjA4IFBN
IEJqb3JuIEhlbGdhYXMgJmx0Ozwvc3Bhbj48YSBocmVmPSJtYWlsdG86aGVsZ2Fhc0BrZXJuZWwu
b3JnIiB0YXJnZXQ9Il9ibGFuayIgc3R5bGU9ImZvbnQtZmFtaWx5OkFyaWFsLEhlbHZldGljYSxz
YW5zLXNlcmlmIj5oZWxnYWFzQGtlcm5lbC5vcmc8L2E+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5
OkFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmIj4mZ3Q7IHdyb3RlOjwvc3Bhbj48YnI+PC9kaXY+
PC9kaXY+PGRpdj48ZGl2IGNsYXNzPSJnbWFpbF9xdW90ZSI+PGJsb2NrcXVvdGUgY2xhc3M9Imdt
YWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjBweCAwcHggMHB4IDAuOGV4O2JvcmRlci1sZWZ0OjFw
eCBzb2xpZCByZ2IoMjA0LDIwNCwyMDQpO3BhZGRpbmctbGVmdDoxZXgiPk9uIFR1ZSwgRmViIDIy
LCAyMDIyIGF0IDEwOjIzOjU0QU0gLTA2MDAsIEZyYW5rIExpIHdyb3RlOjxicj4NCjxicj4NCiZn
dDsgKyAqICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LSsgQmFzZTxicj4NCiZndDsgKyAqIHzCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB8PGJyPg0KJmd0OyArICog
fMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIHw8YnI+DQomZ3Q7ICsgKiB8wqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgfDxi
cj4NCiZndDsgKyAqIHzCoCDCoCDCoCDCoCDCoCBDb21tb24gQ29udHJvbCBSZWdpc3RlcsKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgfDxicj4NCiZndDsgKyAqIHzCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB8
PGJyPg0KJmd0OyArICogfMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHw8YnI+DQomZ3Q7ICsgKiB8wqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgfDxicj4NCiZndDsgKyAqICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsgQmFzZStzcGFuX29mZnNldDxicj4NCiZndDsgKyAqIHzC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHzCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCB8PGJyPg0KJmd0OyArICogfMKgIMKgIFBlZXIgU3BhbiBTcGFjZcKg
IMKgIHzCoCDCoCBTcGFuIFNwYWNlwqAgwqAgwqAgwqAgwqAgwqAgfDxicj4NCiZndDsgKyAqIHzC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHzCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCB8PGJyPg0KJmd0OyArICogfMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgfMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHw8YnI+
DQomZ3Q7ICsgKiArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0rIEJhc2Urc3Bhbl9vZmZzZXQ8YnI+DQomZ3Q7ICsgKiB8wqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqB8wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
fMKgIMKgIMKgK3NwYW5fY291bnQgKiA0PGJyPg0KJmd0OyArICogfMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgfMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IHw8YnI+DQomZ3Q7ICsgKiB8wqAgwqAgwqBTcGFuIFNwYWNlwqAgwqAgwqAgwqAgfMKgIMKgUGVl
ciBTcGFuIFNwYWNlwqAgwqAgwqAgwqAgfDxicj4NCiZndDsgKyAqIHzCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoHzCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCB8PGJyPg0KJmd0OyArICogKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKy0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tKzxicj4NCjxicj4NCkFyZSB0aGVzZSBjb21tZW50cyBzdXBwb3NlZCB0byBz
YXkgKnNwYWQqLCBpLmUuLCBzY3JhdGNocGFkIHNwYWNlLDxicj4NCmluc3RlYWQgb2YgJnF1b3Q7
c3BhbiZxdW90OywgdG8gY29ycmVzcG9uZCB3aXRoIHNwYWRfb2Zmc2V0IGFuZCBzcGFkX2NvdW50
PGJyPg0KYmVsb3c/PC9ibG9ja3F1b3RlPjxkaXYgZGlyPSJhdXRvIj48YnI+PC9kaXY+PGRpdiBk
aXI9ImF1dG8iPjxkaXYgY2xhc3M9ImdtYWlsX2RlZmF1bHQiIHN0eWxlPSJmb250LWZhbWlseTpt
b25vc3BhY2UiPlN0cmFuZ2UsIEkgcmVjZWl2ZWQgc29tZSBvZiB5b3VyIGNvbW1lbnRzIG9uIHRo
ZSB2ZXJ5IG9sZCBwYXRjaGVzLjwvZGl2PjxkaXYgY2xhc3M9ImdtYWlsX2RlZmF1bHQiIHN0eWxl
PSJmb250LWZhbWlseTptb25vc3BhY2UiPkRvZXMgaXQgY29tZSBmcm9tIGFuIGF1dG8gbWFjaGlu
ZT/CoMKgPC9kaXY+PGRpdiBjbGFzcz0iZ21haWxfZGVmYXVsdCIgc3R5bGU9ImZvbnQtZmFtaWx5
Om1vbm9zcGFjZSI+PGJyPjwvZGl2PjxkaXYgY2xhc3M9ImdtYWlsX2RlZmF1bHQiIHN0eWxlPSJm
b250LWZhbWlseTptb25vc3BhY2UiPmJlc3QgcmVnYXJkczwvZGl2PjxkaXYgY2xhc3M9ImdtYWls
X2RlZmF1bHQiIHN0eWxlPSJmb250LWZhbWlseTptb25vc3BhY2UiPkZyYW5rIExpPC9kaXY+PGJy
PjwvZGl2PjxkaXYgZGlyPSJhdXRvIj48YnI+PC9kaXY+PGJsb2NrcXVvdGUgY2xhc3M9ImdtYWls
X3F1b3RlIiBzdHlsZT0ibWFyZ2luOjBweCAwcHggMHB4IDAuOGV4O2JvcmRlci1sZWZ0OjFweCBz
b2xpZCByZ2IoMjA0LDIwNCwyMDQpO3BhZGRpbmctbGVmdDoxZXgiIGRpcj0iYXV0byI+PGJyPg0K
PGJyPg0KJmd0OyArc3RydWN0IGVwZl9udGJfY3RybCB7PGJyPg0KJmd0OyArwqAgwqAgwqB1MzLC
oCDCoCDCoGNvbW1hbmQ7PGJyPg0KJmd0OyArwqAgwqAgwqB1MzLCoCDCoCDCoGFyZ3VtZW50Ozxi
cj4NCiZndDsgK8KgIMKgIMKgdTE2wqAgwqAgwqBjb21tYW5kX3N0YXR1czs8YnI+DQomZ3Q7ICvC
oCDCoCDCoHUxNsKgIMKgIMKgbGlua19zdGF0dXM7PGJyPg0KJmd0OyArwqAgwqAgwqB1MzLCoCDC
oCDCoHRvcG9sb2d5Ozxicj4NCiZndDsgK8KgIMKgIMKgdTY0wqAgwqAgwqBhZGRyOzxicj4NCiZn
dDsgK8KgIMKgIMKgdTY0wqAgwqAgwqBzaXplOzxicj4NCiZndDsgK8KgIMKgIMKgdTMywqAgwqAg
wqBudW1fbXdzOzxicj4NCiZndDsgK8KgIMKgIMKgdTMywqAgwqAgwqByZXNlcnZlZDs8YnI+DQom
Z3Q7ICvCoCDCoCDCoHUzMsKgIMKgIMKgc3BhZF9vZmZzZXQ7PGJyPg0KJmd0OyArwqAgwqAgwqB1
MzLCoCDCoCDCoHNwYWRfY291bnQ7PGJyPg0KJmd0OyArwqAgwqAgwqB1MzLCoCDCoCDCoGRiX2Vu
dHJ5X3NpemU7PGJyPg0KJmd0OyArwqAgwqAgwqB1MzLCoCDCoCDCoGRiX2RhdGFbTUFYX0RCX0NP
VU5UXTs8YnI+DQomZ3Q7ICvCoCDCoCDCoHUzMsKgIMKgIMKgZGJfb2Zmc2V0W01BWF9EQl9DT1VO
VF07PGJyPg0KJmd0OyArfSBfX3BhY2tlZDs8YnI+DQo8L2Jsb2NrcXVvdGU+PC9kaXY+PC9kaXY+
DQo8L2Rpdj4NCg0KPHA+PC9wPgoKLS0gPGJyIC8+CllvdSByZWNlaXZlZCB0aGlzIG1lc3NhZ2Ug
YmVjYXVzZSB5b3UgYXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMgJnF1b3Q7bGlu
dXgtbnRiJnF1b3Q7IGdyb3VwLjxiciAvPgpUbyB1bnN1YnNjcmliZSBmcm9tIHRoaXMgZ3JvdXAg
YW5kIHN0b3AgcmVjZWl2aW5nIGVtYWlscyBmcm9tIGl0LCBzZW5kIGFuIGVtYWlsIHRvIDxhIGhy
ZWY9Im1haWx0bzpsaW51eC1udGIrdW5zdWJzY3JpYmVAZ29vZ2xlZ3JvdXBzLmNvbSI+bGludXgt
bnRiK3Vuc3Vic2NyaWJlQGdvb2dsZWdyb3Vwcy5jb208L2E+LjxiciAvPgpUbyB2aWV3IHRoaXMg
ZGlzY3Vzc2lvbiBvbiB0aGUgd2ViIHZpc2l0IDxhIGhyZWY9Imh0dHBzOi8vZ3JvdXBzLmdvb2ds
ZS5jb20vZC9tc2dpZC9saW51eC1udGIvQ0FIcnBFcVNHeVNIREVUM1lQdTNjenpvTUJtQ1JKc2dH
Z1U0czNHV1didHJ1RkxWSGFBJTQwbWFpbC5nbWFpbC5jb20/dXRtX21lZGl1bT1lbWFpbCZ1dG1f
c291cmNlPWZvb3RlciI+aHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL21zZ2lkL2xpbnV4LW50
Yi9DQUhycEVxU0d5U0hERVQzWVB1M2N6em9NQm1DUkpzZ0dnVTRzM0dXV2J0cnVGTFZIYUElNDBt
YWlsLmdtYWlsLmNvbTwvYT4uPGJyIC8+Cg==
--000000000000aa842c05efbea96f--
