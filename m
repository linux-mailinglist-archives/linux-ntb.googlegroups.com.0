Return-Path: <linux-ntb+bncBCVL5GMC3MJBBWUATDYQKGQEEVDGBYA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x54d.google.com (mail-ed1-x54d.google.com [IPv6:2a00:1450:4864:20::54d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F095143252
	for <lists+linux-ntb@lfdr.de>; Mon, 20 Jan 2020 20:32:43 +0100 (CET)
Received: by mail-ed1-x54d.google.com with SMTP id d21sf211912edy.3
        for <lists+linux-ntb@lfdr.de>; Mon, 20 Jan 2020 11:32:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579548762; cv=pass;
        d=google.com; s=arc-20160816;
        b=HSFKo0VGot+/SjoLxEAPNZpV+niAn8eKAmAj3QztQ7hsSRY7xbjlImPpjjueYsFKrY
         EyU4j8daZtmABdDgk9D2srxl1345+kxFIjcnaev+i8Rw7iCe5hSeW7mQhf2jyxZrf66g
         EslQPn0lRVnnhpBVRtkXnINY1bvrc2MBCO/lvcG29KPkpUwukrtO97ATIWf5AW1Ddlt+
         VVvAcUm8zjvFAU+xT1B6M0J3nD2c89FhsvLGMjaWregreIBOmzFYeH+Fixt/vNMT3BaV
         b5/STnmRTxksI9/IICwu4VOaNN3D7y3YMx7mkDFtvAbyaKW0TsoG8/3HCHRGmLhSiVgy
         tjfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=hTYviDUJSlaFJROMEQvxqcaTbYNnc1NVFvSAmfAQ8YY=;
        b=rczum7XWgyDNS9D6YPA8qDwzsKDO9vP+q5G1ngfgnbXqRALYuidANIwy0cTwQa6pAI
         RYaYYcwP61+++tjhz+UhRo6/Ir0bq3CaxgQF4y1ImGVWsKcDXgJLo9IQl4eGyugLD+uA
         JMFQorXcbO5ZOYhU7tcqI+SjpPq/hBXCvdjtBCQvRmf4Zq0Jxyq6wE7qM5TcSCIX+T2U
         ME3M81Bmo8o3ZEcWi/xUWFB0IPtD+Zn9nDMkRaMsvZvzEoNqcnNzJSGt/PccA8lZcPc+
         AKNPe35hFUZPNm38etaNLcPPBEpfp5tiOUg63YCVgyjYCD3hZI6CDcO7Z1bys7UINKKR
         I/fA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I1roYPqx;
       spf=pass (google.com: domain of eco.bank1204@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=eco.bank1204@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hTYviDUJSlaFJROMEQvxqcaTbYNnc1NVFvSAmfAQ8YY=;
        b=bzjsUf4zuqIZ92FzAvmzQRMx0bpKnWiem0R8v8SQQTNpycmarCud5faHqKIoTDGNTb
         2qRssUlv/2y9b9wtC/EK/z9QZd7V8ZtCWDm6IkaTluxQjnzcOKrWJWwYsSCk6lhM5Iv8
         uH3yP72J1QjyK/KNIHt2CRPIgUfaRqrQuWAirNVkOsn6qnuYhr6MVaJaEis77xsoeC+S
         nk/Uba3ekPagkNbG1VTQKywzhIEvMIhT4uDiCbL7lIuZLYcXnd3RLeebLeSE0Ps6tIty
         kyFC3JBr29dSxBDmJ0/w6nf/q0RLdTdJQ3z8HHwHMeTCmfN/Gr01vW0ZFsi9ENBzAB8X
         Gxfw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hTYviDUJSlaFJROMEQvxqcaTbYNnc1NVFvSAmfAQ8YY=;
        b=SMo9ttGfqIzGKF7VuuzPbbmAzaIjPzefWt9cvpdzUkItBEG2dU+7goIjlV3nLBfshL
         PDFIQhIofEVWrNDFlGzW6bE31qxa32esdshuKjw9lkGWL8opfqYN1krEsAFGTyUyLxxq
         Kki7qpboEsaUA9oa2M8qsMiTIAoedwqn2jovPp9KwgkTm/sFppCCsaDIHbHWIp3Up++B
         7VPaxaTJjpydLvLpY/MUFuzeLDpe3ggHzN92TWjNHZTUVrHqJ9UCbqGrSyUgoUDUtflJ
         na85VRBG5aoZ0nJZFNYcY8eYWAIT44npSkeyUepSQqrqVP3xp7HgDf5QELXWGRemPdFK
         iiaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hTYviDUJSlaFJROMEQvxqcaTbYNnc1NVFvSAmfAQ8YY=;
        b=ByJJsvwW7bGcJoh+SBAp5b0gNtZuajn16fRpLw5safZ8e9AnW0DZdNfoKzhbMeNI0Q
         l77t1c5U4duV24fp8DQNGOjLasA81RLu5SbVKAP67BjuqRRqkZe5xpecfVOOviKFaD21
         cAP24jLN28I6iQBE+cBeEWX/THVDxlLYQ0LnbLXsFjDScBVYqLmPYBmsw2GI/cQ4BcKB
         J1sfTm0A5pFvp8SRmEiqf3oisM5Fw/u1RjV+B213DJiKBT8fI/e09xrean3STiG0nFkH
         GWscBXbYXcdZjiSo0FwGGE1kZG3qqt3X8gmQXQOxtQ9V/ygkTvw1d4NDlH6D3WZfHZxZ
         60VQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXDhs5KkK3IqVEYtvTlxamTi3i4f+z1HLosd9c0JQR7XkPSL3V+
	gMciB04DmhqTRQPKunhGw8w=
X-Google-Smtp-Source: APXvYqxkN141gRmqt4zXDAIpIB1t1ugy9+TgxVypGe6bebqXMTQwrhtAXiytxZyVp2JNT7LbOR02CQ==
X-Received: by 2002:a17:906:687:: with SMTP id u7mr904499ejb.171.1579548762803;
        Mon, 20 Jan 2020 11:32:42 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6402:177c:: with SMTP id da28ls8329773edb.8.gmail; Mon,
 20 Jan 2020 11:32:42 -0800 (PST)
X-Received: by 2002:aa7:df09:: with SMTP id c9mr633755edy.133.1579548761966;
        Mon, 20 Jan 2020 11:32:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579548761; cv=none;
        d=google.com; s=arc-20160816;
        b=zFnzivNlAJM5erM3wDW6OdeSLqBVFXP8OnOPBvCXzbe7g8irTgaUp415RI1AqdbgHj
         5iNQnBqYeXwCWeN+wZlojBU0sYH7BRUCTjgYYD6Gwrt4Ru+zDiI3IbIl7T1jNEWfKB4I
         2Q+haTteWLgfU+Njn3KCAWJ+drehn61v6LQ2l/AG3B7ZNXkqQrjp4cdn78GHSrTTHLOC
         Egoi1JcPfu3ekgrSL6UTvXRsiKwdJ+ZwwqpnzHtwgyasdjCNth3Lk/P6IA4c9S1iRB+2
         49mXqDvqB2skOnUY7eJdQoXOzI41N9yMRIxtbqfsdJztX8Cg0JBClGrWyuzwkz4dTchm
         7Pfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=z7I/Kq2V0EnXiuoACdRbnwoAql3KZ080nwyXVjlruyU=;
        b=iXsYZNQgZedf4kZ3Fz1K04TJzp4MG04CGCM4kKp/lzYvMih0/BS6oA7x5QwLKj2u7H
         /jJWIEYZn/53aAFIJ9AaouBdg7HiMo/DvYH9YkvHtC9N2vZauBkhWVrWy531ruSwrB0b
         hidEJ8g0OTD2ciLIuAQTF1z9HFHk50o1LLAggQHQsBJBqHqWFRkA8U24oeKwMv/2g8Ej
         BRy1Ce6SdfYnSoE62BP4juVo099EdZFwMMOr36oVST+KhGzdw3/sPCZWt+5Kq+vu4oVQ
         hvCU4Uz/119QPe/Wi/9KJkMQHuQxipahnrCLhCgDF0U7Byb9DxqI5JL5Yi7NoKwoc/at
         0MuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I1roYPqx;
       spf=pass (google.com: domain of eco.bank1204@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=eco.bank1204@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id ba12si1424414edb.3.2020.01.20.11.32.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jan 2020 11:32:41 -0800 (PST)
Received-SPF: pass (google.com: domain of eco.bank1204@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) client-ip=2a00:1450:4864:20::541;
Received: by mail-ed1-x541.google.com with SMTP id f8so627529edv.2
        for <linux-ntb@googlegroups.com>; Mon, 20 Jan 2020 11:32:41 -0800 (PST)
X-Received: by 2002:a17:906:1fcd:: with SMTP id e13mr898516ejt.333.1579548761316;
 Mon, 20 Jan 2020 11:32:41 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6402:22dc:0:0:0:0 with HTTP; Mon, 20 Jan 2020 11:32:40
 -0800 (PST)
Reply-To: mcclainejohn.13@gmail.com
From: "Prof, William Roberts" <eco.bank1204@gmail.com>
Date: Mon, 20 Jan 2020 20:32:40 +0100
Message-ID: <CAOE+jABpcHQWZWhtskhDFbtTqfBe7h065WE2kC1G+jQD+tQiTA@mail.gmail.com>
Subject: Contact Diplomatic Agent, Mr. Mcclaine John to receive your ATM CARD
 valued the sum of $12.8Million United States Dollars
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: eco.bank1204@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=I1roYPqx;       spf=pass
 (google.com: domain of eco.bank1204@gmail.com designates 2a00:1450:4864:20::541
 as permitted sender) smtp.mailfrom=eco.bank1204@gmail.com;       dmarc=pass
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

Attn: Dear Beneficiary,

I wish to inform you that the diplomatic agent conveying your ATM CARD
valued the sum of $12.8Million United States Dollars has misplaced
your address and he is currently stranded at (George Bush
International Airport) Houston Texas USA now
We required you to reconfirm the following information's below to him
so that he can deliver your Payment CARD to you today or tomorrow
morning as information provided with open communications via email and
telephone for security reasons.
HERE IS THE DETAILS  HE NEED FROM YOU URGENT
YOUR FULL NAME:========
ADDRESS:========
MOBILE NO:========
NAME OF YOUR NEAREST AIRPORT:========
A COPY OF YOUR IDENTIFICATION :========

Note; do contact the diplomatic agent immediately through the
information's listed below
Contact Person: Diplomatic Agent, Mr. Mcclaine John
EMAIL: mcclainejohn.13@gmail.com
Tel:(223) 777-7518

Contact the diplomatic agent immediately
because he is waiting to hear from you today with the needed information's.

NOTE: The Diplomatic agent does not know that the content of the
consignment box is $12.800,000,00 Million United States Dollars and on
no circumstances should you let him know the content. The consignment
was moved from here as family treasures, so never allow him to open
the box. Please I have paid delivery fees for you but the only money
you must send to Mcclaine John is your ATM CARD delivery fee $25.00
only. text Him as you contact Him Immediately

Thanks,
with Regards.
Prof, William Roberts
Director DHL COURIER SERVICES-Benin

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAOE%2BjABpcHQWZWhtskhDFbtTqfBe7h065WE2kC1G%2BjQD%2BtQiTA%40mail.gmail.com.
