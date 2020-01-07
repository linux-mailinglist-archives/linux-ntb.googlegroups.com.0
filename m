Return-Path: <linux-ntb+bncBDY6BUGV7MGBB3GD2PYAKGQEBQECNSA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F55132FE1
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Jan 2020 20:54:20 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id 90sf408628wrq.6
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Jan 2020 11:54:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578426860; cv=pass;
        d=google.com; s=arc-20160816;
        b=FVlUpQ6qVXjeV5BuHpn20suEWWFoGgsvXeYPHBw9XEMXNBdEZzpot66i8vF7ik1uPd
         PaKQIUU2LWOaB0YgajPCTnGKRp652eA2RIDdfckGhs77INek/t48KV+khowof7DBA3gU
         flwhwUsABicfZ1c4SQLLmrd7vCtQnOHDhdU81f2TgTxcTrZT2/OZeZWODs9+EubJf40i
         rYsQK4UaalFbxwMftcoUkIFR4YlgsZJWPnH+QGCGiyRaNLhHBmf5IQEfgDyU9Piq5Qoe
         LhcpQya3ZQWXWrMl6VSqOm4BW4wttkbi0nIKH7/+YlYL4geuWBHKCoccCZGUhhPgA6d2
         u+zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=dEFoXBmmzEjbaV9IHeqGX/jObc21gzNYfXLccTiiDSI=;
        b=JwPf5OFnAVukcpgR7l3cocZccjO5C1zxc1g8ZrltLbd4RDr/jwL4jqJSQ0GTwO/0No
         vaAc4D2RC57cxlWc4mFPikob0IGOZCAAEwW3y/y9MY5ma7RHPF4D3hmQ2TMvuNVHnGsb
         ++hNnXjf4PxUhoQTf/yiIdd+WQf54hJv6weJs0ncRJTVIpx3EeAzCFrGP5oDQ2qf+o7b
         GYpc5sCrGu0tpfSbWAUayXuRopG/Xj28IjcbesFUt62SlcfjuU90Ag1x5w/lu5uIW1nC
         OLp93gMf4c/IBRMU3QU6yDL8QXj+WbNbi/X65bioxYv3DThCfKwk7wNYM6svVFfLQviz
         Qf6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rePy6dvW;
       spf=pass (google.com: domain of currency1000000@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=currency1000000@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dEFoXBmmzEjbaV9IHeqGX/jObc21gzNYfXLccTiiDSI=;
        b=FT+CNoEmIfqCj8t5icVt8gLb/qqYFn4D5sJT3wVgWrdbzhAuWl/XofDwm27bDMwF27
         EuDQabrswkK6Q1/Z8jGt3MosJV8u8Zogb1vcrgmTmC1uukbOy1G2U/w5nzlGKsFYJj23
         pPBkwOLIeyes1FbCJcPI+/ttsx2yGOcgpt38nVMKPyw5YDXMBkdtO+3grwK1T6Ey8VGq
         R9CkCBxBOFL0gU9umfWFkewszc8Ynwc7BQuabfoeawvYWk2l5tWQPn3RFj7iQacUxEEp
         mxw9jmrMSX6GMxORVgnZKDyX6e9mjtBXa2bGhCtm7cFcYdm5hqXJPGXidfBbo6dHAzrJ
         3Gng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dEFoXBmmzEjbaV9IHeqGX/jObc21gzNYfXLccTiiDSI=;
        b=p29ViCHjvw/7cSHKG49PbjEO+uLMVPehcBjp1VVedwyp8qbUZNA28nkC/Mpa3SQF8g
         wMsf/QpPbDJ+FC2kSzF01JVB94hxIu1uaFPnBqVWuOmFqnd6hGB0OoagMXx4IfHJEevj
         YC6LINlSwH+Z6gBLDWi8xPuf0Ea+6+M2+Q7qvCTrxplVFUJLTIdKhYXWjRLR9LO22AoS
         wjjtnvnT6pVbG7OxJkvJAcxUj5/Ckv0OHEO5KXKUArsPak+RNr5GMvcxKPXJxJKSZXzh
         J3KzaqKep6i8Ntj7MMVU/t6MB5P0wPHj2PVqwTY/lca+T+MRxEIHr+wB1f0Wmp0mB8oI
         hN9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dEFoXBmmzEjbaV9IHeqGX/jObc21gzNYfXLccTiiDSI=;
        b=PNOjM+I23HPRUkHedAnkKPP2ziTTE97WsgOc03m8HOisxdVKgcYrq6TFvNvMh0WsiO
         PvCIL3z1MMLGw87T7ADUE0kIAPNst6CBEsOErOUhzybnAeqDfIhUYIYLUOxeEZbSWmpv
         bXRe+e2H+lJQwBBwycjeOuzXPqLb6CKdTX29HPdPjti7RwPrYUBl4t1iVjZkX6FeZAjd
         TgeKS/8faWqJ3VqlX98qqMls/uXQqhZSEae0hElADt7OMKsGoPCBDu+zp65KsBmQRpxA
         AZrAc3z1eVCH/KESWcVROrBaJgUcOmOMpGi3ywdV4GgcFShEPHMpBZHh7mSMObOzo9fb
         /tPg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUrMl3MGdaAMkKfpop2B9bCP+UREqTe/zh6LvejRMcpVaWhmH9p
	211yPHZEGIYbNbMyx8ep97E=
X-Google-Smtp-Source: APXvYqyPkb38D/0to+Twn1TcWvqqvpcIdzSaa5O0FFx0wot4uQJk+71VTAyvZj9GkLYZYj/nzJG8yA==
X-Received: by 2002:adf:f1c6:: with SMTP id z6mr768531wro.279.1578426860108;
        Tue, 07 Jan 2020 11:54:20 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:6303:: with SMTP id i3ls115012wru.13.gmail; Tue, 07 Jan
 2020 11:54:19 -0800 (PST)
X-Received: by 2002:a5d:4b47:: with SMTP id w7mr822867wrs.276.1578426859646;
        Tue, 07 Jan 2020 11:54:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578426859; cv=none;
        d=google.com; s=arc-20160816;
        b=WuNb15BmlIyVMPCdgHLlYPlSv8h3oeOHOPqcKmrduGaQXKpggXFlFzYyXWFAzJ2R2g
         nJEepqPsuJ4tpK/PWrE1mJLZKJK5BdCBt/ib7bIDXvm+C7CbfcebVCrBNQLkbtKdWA6A
         UtjsH93DgksuNeyAn4VCZcw7wsRQp8DoyHILJPUtL65b2rVj4p8/l+Otmom+TRcl3YWW
         pDPVEu5XU8UqNZNK7yvzv965LdrqLAiOKK4LKoobVHBPXNOsGVRbSsmDzAaBUY7YZy+7
         v+ZMSkiDiQmTCpE1CVqoDzE/Dxbg7qKAYHXcMQ+sfFzimvhxy4O+s7S4K35KfDU3C2HR
         yX7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=Pi/olKLeaBrqhttAwoMGSoT+Sxp+y5xY3PQr7eygtLM=;
        b=CokkvjXJeP5oDp3+H59JDqeuK0XKk512UQkRrD6ETbi10TQiTwxVZBySvkq1QtaOKS
         t8Tz9AY2AUnXGT1aIOpM8nFftlUNtAJfHgXwgTm22Zmc8hNm9hRZ/QBV6+d3BbwycUdR
         xklitdAbAFRhNEgoAZbXq8rGzRSeeghsV+FhAzqDWq3clBQ7nnB9V+UnBBCNBmOfeo4r
         3dIyjTXHO0nBmfrTZI0l1DYM2EYPlX+ClzmIVp5T11G5JzB6P+YkhUOC23zgAVYx3X45
         LaAb9AdtJwu4UpyxCzPCaqfNPkI0AhlVkmvVvhI58UPjlQqUPlV2dBKZVDa6/v4lem+g
         i8mA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rePy6dvW;
       spf=pass (google.com: domain of currency1000000@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=currency1000000@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id m12si36207wrq.1.2020.01.07.11.54.19
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2020 11:54:19 -0800 (PST)
Received-SPF: pass (google.com: domain of currency1000000@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) client-ip=2a00:1450:4864:20::544;
Received: by mail-ed1-x544.google.com with SMTP id cy15so629884edb.4
        for <linux-ntb@googlegroups.com>; Tue, 07 Jan 2020 11:54:19 -0800 (PST)
X-Received: by 2002:a17:906:2894:: with SMTP id o20mr1108577ejd.199.1578426859045;
 Tue, 07 Jan 2020 11:54:19 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:906:72c6:0:0:0:0 with HTTP; Tue, 7 Jan 2020 11:54:18
 -0800 (PST)
Reply-To: dhlexpresscouriercompany.nyusa@gmail.com
From: "Dr. William Johnson" <currency1000000@gmail.com>
Date: Tue, 7 Jan 2020 20:54:18 +0100
Message-ID: <CAPqfnSFyOwF0m-QsrOdcFV_PCC3TSBr=YQHoQHvH0baKHfeF6Q@mail.gmail.com>
Subject: contact Dhl office New York to receive your Prepaid ATM Master Card
 worth $15.8Million US DOLLARS now.
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: currency1000000@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rePy6dvW;       spf=pass
 (google.com: domain of currency1000000@gmail.com designates
 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=currency1000000@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

ATTN Dear Beneficiary.
Goodnews
I have Registered your Prepaid ATM Master Card
worth $15.800,000.00 US DOLLARS Courier company asigned to deliver it
to you today.
So contact Dhl office New York to receive your Prepaid ATM Master Card
worth $15.8Million US DOLLARS now.
Contact Person: Mrs. Mary Michael, Director, DHL Courier Company-NY USA. 10218
Email. dhlexpresscouriercompany.nyusa@gmail.com
Call the office +(202) 890-8752
Rec-Confirmed your mailing address to the office as I listed below.
Your Full Name--------------
House Address-----------
Your working Phone Number----------------
ID copy-------------------------
Sex-----------------------------
Note,delivery fee to your address is only $50.00. send it to this
company urgent on itunes card today so that DHL will deliver this
Prepaid ATM Master Card to you today according to our finally
agreement.
Thanks for coperations,
Dr. William Johnson

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAPqfnSFyOwF0m-QsrOdcFV_PCC3TSBr%3DYQHoQHvH0baKHfeF6Q%40mail.gmail.com.
