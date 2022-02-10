Return-Path: <linux-ntb+bncBDMZPPHJX4HBBOVDSWIAMGQENODSJEQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1EC4B14B3
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Feb 2022 18:56:11 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id y23-20020a5e8717000000b0060fd92726cbsf4536944ioj.22
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Feb 2022 09:56:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1644515770; cv=pass;
        d=google.com; s=arc-20160816;
        b=QTHnpwBzXDSJFGWBsl8zEgPmLRTNp31FiVHugwRRxLrfXP/RmgG++c3xx0v+esjN6M
         44YIbB5o2OR+iSK6n6cA+P44VUoGLyc8Aajbq4IAB7N8cTECL7Of+48yeBNdlzx8ETu4
         aJOCw4X7KxWcoV47ybt4VNuT8oL1Mt+ulsYE8tbK62x0WWsBMHsRMcYXtsIWOWdd1RHk
         Gau3Fl1lNpAZlWHR65bqNzcbxS0zc36ZLO7vm7Hnm1nrIG5XyVEol0CaCoAN0dgqjq6r
         KJU39x7qcY/c464EuUretRAoXUf3+MPZ94M41pWqBgID33AVhdsfEfRBO4zX1Wbww6ab
         98Hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=KoPheyXGuBZmESSi4YvzCC9924SYEVzF0pJmx2PLBh4=;
        b=zSo3owdVNHGs0jNQiIvo+g2y9QGc7M0R0iQ2RF27yhMejly6K3Uv10tI/RTRxfXeP5
         /0reVOP/8kvb0v1gYRZAZ+vmup1WelMO/NMillNWIJEECVE4nsw6oKKtK9ajqGB4+YKD
         0yTNtodGcE0wUUiVn7ITWKyYsBCKfmZhJ9C4d+3nVf9KyKjBnoE45dLY9KyGhq39ByKn
         I9wVnwTLd1R56+nx8p0Oxmz7JQDrDFuHcMiQQwHnfrYf7aYw8y0/h7UvXZvOTQh5omlq
         FHMXf91WTolyUsqgMObf35jGLzJDgzN3dckHEYSkLnH3xcDuGHfcERTKxiQEAhacjtQR
         HU2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=isSCwwoT;
       spf=pass (google.com: domain of tonynelsonson@gmail.com designates 2607:f8b0:4864:20::92b as permitted sender) smtp.mailfrom=tonynelsonson@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KoPheyXGuBZmESSi4YvzCC9924SYEVzF0pJmx2PLBh4=;
        b=LABakzvmqmYxBtC1TQZcghroCislCk4KCVD59spTeNl+ksLLfDwTj7de/mzPGnNHUi
         Rk4Bj4BQT4zpmxIu2iSmB0o1KXz94ByiHKJ7D5HDH8ExKpa3B8YrQF9leGlp+ohSVlFE
         0yK/Cp1v/TTtD6p5gxgR7Wtc/O5/KzJNSumgzjw0bKldFSWSmxTWuZxVAw9J71flE3Yu
         XUEDV8aepQ2eFlldNWx8tZjWqc137XJaHpPKx+E+IQkcQ8TJlpHZ7idhjbRT65MbJZKO
         sOfqzsZ1bJaHR6ys1Xnzl3gnShM/F15Kg/qSci4HiVR/9rJXIxHkqPV+4Q90F/k8+k/T
         dEUg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KoPheyXGuBZmESSi4YvzCC9924SYEVzF0pJmx2PLBh4=;
        b=DRUBgUeu8aBHK2fJCzY6Jz7wadMUYcu3VLUgoqhWkjwf8ClzaQUQZMNhAE7oZ6OA6d
         ge2lUolf54rxhkUHFKmqR3rbuKZKa3iP0mzWc3NwaSCeNW/MXSscg79wdHhHns+gQ1Cm
         vrHKBMuPqsrWdk+0EFLcC3PbsUsQDqijOofDd/ICn86xzvn6U/X78Y8lSleDvh4EN2p5
         RpL1wYtTVEkSFW5srUv+JUbuIho8p3YsxzUYL7skDavkRds+b5FY/0l9AspvM0g7mGLj
         ILJEVr6a0JQ0URYHEf0P/uMc/jMUA0g0s0VL1bR139AtbFomSJOsjQBoz7jztQVyuUJR
         uWUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KoPheyXGuBZmESSi4YvzCC9924SYEVzF0pJmx2PLBh4=;
        b=GSCvGRVOrOaSWqpsgkya1z5XDkmsoEy/iAS4BxLRIXze/l0JAc8HCqmwrS56imQAul
         5yaIDJ+hsSC2m35JcJeo6fpkcoLUe43Hp3cTihnSORF4jmVCxU8R9fA0N9RZyUCb29vd
         x8EQxl6AHXiwfMXuppufny1A8K87jUJu+ELJimoJfZTQQ1g505LyL7oTdJZsc7/0LbTA
         tb0VPvRckXuo/mTcWeVdc1SmXpo4HdllzqxVy+VBYfzkUqHUvcnjMi988CwLvd20GKvB
         lrwIXGHBY3MtilEDTY5IIalqxm2+MhqqB2vQ5bB8l4tNjffTCscTr8STpRsrSzpe5XhO
         rlVA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531XJmOsIgcZpO20CzImT4qaCaroo1jANvFEkkI79FU2T8ij2A/6
	QYyfc1j11k4W8dbYjnFj1tk=
X-Google-Smtp-Source: ABdhPJzj7FdhQXmNxvGKl417uIewRw7MSYSW366QrcrpVlubbn0+ZhZXqFCkdHk9N/lm8jbk292aVg==
X-Received: by 2002:a05:6638:528:: with SMTP id j8mr4606515jar.24.1644515770702;
        Thu, 10 Feb 2022 09:56:10 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6638:1ec:: with SMTP id t12ls1128037jaq.10.gmail; Thu,
 10 Feb 2022 09:56:10 -0800 (PST)
X-Received: by 2002:a02:c916:: with SMTP id t22mr4879857jao.300.1644515770326;
        Thu, 10 Feb 2022 09:56:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1644515770; cv=none;
        d=google.com; s=arc-20160816;
        b=TBLvfx3cSBrpXybkFivRy+7vS1o+GMW88vr8kFNu9B61qDkf2CFfDbwXUaeY1DNNra
         /8PBGbiYObCFV43nELj4SQG9aO6YUJZAf5kyUZMUX6sJfxPg886XwH/XYxYXz8ZmzUzB
         +H9hHLhVT7FJb05h2rsXMSTNVL7+5COdOxGU8qa446yAIzOCeQiOOiR6XbJf3qJ2VHuA
         DsFEwuo+OzA8Es3lq/kDnTldDyxIeDoxGN7qUv1Q9abp/BR2mUhHDpyF2ze/qtX+6f8v
         b57GQ/J6A99ta7SaO9AdrvVEEIcRZkuHfjwA6k13ZFDOf1u+fLFpoBLdf3sy3YT5NTIr
         45Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=pypwbY1qJPzMZz1nCuJqprSaF/Rglgrxm/XpjftGJVk=;
        b=I86cTK+RnSKpoolZgGYTgrsF4NptKcIdJ9ChnoN9rqHrCDLEgQBavzkdkj0QR/C8uj
         jeUMXhFOfjn0VHY67/jqL/BSnQoQ2rbbN5Bwb9GiVfOFFybtvYAFQ0lk9ebJItN0zB8+
         SRwkbFvTFIvKUHeXYtdWIZ/A2zpC9n4GgW6TQV3utZbIc50KEFHWkOSpBtQ4a2i+QhaV
         JnzEVUUinkgfiCgOBbmHeCYBJlB/u7lnpbywVoPu457H/V8fe8VEkMpH1JiU4OnHgzTB
         K0gcwtSUpKZYCE3y2FN3qGhqMtVPB3u0CTAIIR2w3/fEr9uzS6jwODfTEOzIX1m9c2yl
         NbZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=isSCwwoT;
       spf=pass (google.com: domain of tonynelsonson@gmail.com designates 2607:f8b0:4864:20::92b as permitted sender) smtp.mailfrom=tonynelsonson@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ua1-x92b.google.com (mail-ua1-x92b.google.com. [2607:f8b0:4864:20::92b])
        by gmr-mx.google.com with ESMTPS id m17si2059828jav.6.2022.02.10.09.56.10
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Feb 2022 09:56:10 -0800 (PST)
Received-SPF: pass (google.com: domain of tonynelsonson@gmail.com designates 2607:f8b0:4864:20::92b as permitted sender) client-ip=2607:f8b0:4864:20::92b;
Received: by mail-ua1-x92b.google.com with SMTP id c36so3405357uae.13
        for <linux-ntb@googlegroups.com>; Thu, 10 Feb 2022 09:56:10 -0800 (PST)
X-Received: by 2002:ab0:3045:: with SMTP id x5mr2874248ual.17.1644515769944;
 Thu, 10 Feb 2022 09:56:09 -0800 (PST)
MIME-Version: 1.0
From: Nathan Caleb <nathancalebnathan@gmail.com>
Date: Thu, 10 Feb 2022 05:55:47 -1200
Message-ID: <CAF=5axs_6ydz0sjvjU_hPju8Aausn2v+zJ7s6MXv2_4vfq_dJw@mail.gmail.com>
Subject: From Karen Smith Trust
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="0000000000004b8f3405d7adaa6b"
X-Original-Sender: nathancalebnathan@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=isSCwwoT;       spf=pass
 (google.com: domain of tonynelsonson@gmail.com designates 2607:f8b0:4864:20::92b
 as permitted sender) smtp.mailfrom=tonynelsonson@gmail.com;       dmarc=pass
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

--0000000000004b8f3405d7adaa6b
Content-Type: text/plain; charset="UTF-8"

I wrote a previous message which was not answered, hope all is well with
you?

Sincerely yours
Nathan Caleb
For Karen Smith Trust

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAF%3D5axs_6ydz0sjvjU_hPju8Aausn2v%2BzJ7s6MXv2_4vfq_dJw%40mail.gmail.com.

--0000000000004b8f3405d7adaa6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I wrote a previous message which was not answered, hope al=
l is well with you?<br><br>Sincerely yours<br>Nathan Caleb<br>For Karen Smi=
th Trust<br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CAF%3D5axs_6ydz0sjvjU_hPju8Aausn2v%2BzJ7s6MXv2_4vfq_dJ=
w%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.g=
oogle.com/d/msgid/linux-ntb/CAF%3D5axs_6ydz0sjvjU_hPju8Aausn2v%2BzJ7s6MXv2_=
4vfq_dJw%40mail.gmail.com</a>.<br />

--0000000000004b8f3405d7adaa6b--
