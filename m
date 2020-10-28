Return-Path: <linux-ntb+bncBAABBJXL4T6AKGQEJ2WWZRA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id C827429CF20
	for <lists+linux-ntb@lfdr.de>; Wed, 28 Oct 2020 10:11:02 +0100 (CET)
Received: by mail-wm1-x340.google.com with SMTP id t21sf305461wmt.8
        for <lists+linux-ntb@lfdr.de>; Wed, 28 Oct 2020 02:11:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603876262; cv=pass;
        d=google.com; s=arc-20160816;
        b=ylXHNgC/SXU4xHA/d8JZHeR7dsQSRiU/r2U9T7yaeu/k2bC0w8WmFZeynpSQiaOjPh
         2hNuFEWIT9ZCIRcDAAnccio/Ao+4m50bgjhuIcwLZEWBjBkOIIeFEoqSCrVONfkl3j05
         CVQ6w7jEkBJuLGwQPIinsqobtSGQZYMOsceIuuoIABT2utg+acuW+LZsWhNycQur4Ocd
         2qkfRDdjnocnH5OHKrxcFgaKfcILd0e2U/3qQ/s3pko7KeXHi4w46uJ5q0GZutKCDisu
         wwmiwFuQH/O0VG6b0y+GFU8RTyNIqCfd7fTHEFw7M84wwK1tD7sVpIA6Kt/YIn4O3dmj
         OfnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:references:mime-version
         :subject:message-id:from:date:dkim-signature;
        bh=CMZUbgjKHRt/uD+mQuJL9uQ0TzRiCQE6RIkNXPWcg8g=;
        b=EylJspY1fBA0LnPPR/VkS+1F+j0y8x0cHCu7yg1qlI6sVHOeuil9BJTdxwqY1WPl2z
         hP6TJdTyS+th5MnFnwto9ZWFLH6jMY4IxsfpcMcdU4UkAKF5A50pel1yYFqaJ7jtANhp
         QMwNdGOsQ+ZMguHVS2J+llHQSIqwfyg6PB2jhAVy5VyUvLk5Os03N1ogOIag4atXJBpT
         59ycH0VjCqaE52tm1/Q8HFcGq7VP2P0YkpwDU7+fLHVOo73d82k0XSpUSQje01sYU/KV
         mL3qpKV9FaK7WvMsnyVidXvvhfn6ZEGvnXbXGzG+EN+/X5FDuqYbhFBCJiIqlxj+fz8Y
         3Eww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.co.uk header.s=s2048 header.b=WXzyADSJ;
       spf=pass (google.com: domain of federico_quevedo@yahoo.co.uk designates 77.238.177.147 as permitted sender) smtp.mailfrom=federico_quevedo@yahoo.co.uk;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:message-id:subject:mime-version:references
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CMZUbgjKHRt/uD+mQuJL9uQ0TzRiCQE6RIkNXPWcg8g=;
        b=G59/B3WMUporl3vdJWvAcmJonzJNSgnGCn9q611QlpZNBJ9G2AMTMR2JitWlmS8R5Z
         9c+E1phciBkzqiWlPzVFxKjHnMea2Mi97gJxOAYeRB4QruTYylzPCjl53A+d6UMrQ55l
         bgAva7IEHumGVJqBn9uu+GBWJaOmHSdVDbBxnNFzkdP8MtsqzqgNQ2H08k/MjRZwHvVz
         KL+PvAzwfF8qc1MIMy+3hutopV0fVABqcr82usKQ2oYsJtvsgkxwxGyvd67LFac73LQW
         0STfmehA4T/sWw7YToufs8zQBpwxMWIa1sy3V6B6w1+5am4pwSKqyS4Nnfg9WhtyAu2x
         aIWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:message-id:subject:mime-version
         :references:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CMZUbgjKHRt/uD+mQuJL9uQ0TzRiCQE6RIkNXPWcg8g=;
        b=ozp0YwghBkuM5Ex2RrD0sjr8EHz8j4JOFQkUrWT43wXx9IY16ny9dN8yWmcRvcvxgd
         crjMvrNBbapivn6owDtnyWoouqU2nduO8vzO4pvDR8SqvuJc20sIqNLZUmxTh3P7+66j
         uXeKEspU30vA0WZdqEIzpuBn1pkE5/60rlpYeIpcnEYTDUzc40PwlR3esdi3nXyBGmOX
         niGgyK4Ox3tHMJrqGshoudjoKL17HPDBo0nitpyTLMrSRWn8oLgIeB6ZWR1RlSTn4QSZ
         0Fn7NQ0i5v9NHR+uxKHHJLM/lVWjP+yFYNonDGdfSOmAPHFSE8Ln3v+J6a0nV03T3C8g
         vOoQ==
X-Gm-Message-State: AOAM530Y1vQlUmpBiiZ2Lo/GyUQEncJt0EVd6nDOvPq+MOqwTOv8wksn
	G2Epu0wbqmj8105JDLfLNFQ=
X-Google-Smtp-Source: ABdhPJwPWvXORp0xTRa4H25KJ+cSgTtqV0ccFceh5zdHEP7wQb/REtVma0460xpcw06Ae57rJOSluw==
X-Received: by 2002:a1c:e244:: with SMTP id z65mr7283791wmg.40.1603876262539;
        Wed, 28 Oct 2020 02:11:02 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:cd8c:: with SMTP id q12ls2803354wrj.0.gmail; Wed, 28 Oct
 2020 02:11:01 -0700 (PDT)
X-Received: by 2002:adf:d4c5:: with SMTP id w5mr8126427wrk.226.1603876261778;
        Wed, 28 Oct 2020 02:11:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603876261; cv=none;
        d=google.com; s=arc-20160816;
        b=T/+MAp3847CY+IH+H/b7HqZxw7qxpp2cyiwyLjIYvOmdTUlaiGaRNDk5zIkycTLdWO
         oRZvf4fKwluCp86SLdzQM2/gwaNDV0zl/yfh9qJLws+OcswUUQZ0MPtUPqIAcgrkq/r2
         aZr6zFYvdALiGmBBrPxOiNfrEkxTN3u9looGCeuX5pY7oKsXelma1JBnU3T8rgyxvnvg
         ks0WNlJ6qLDkH6/7V/dE8nvbTEUOGcZekx1Jv6NFloNar31ReXKkJztHOrnk7srWqQ2H
         l+p/MpgWQL2eNrFaj5uJtQf8Ao3O1fbeazrJyX8l/sQWf1O7nXaNuYBM5saFOt6CXXir
         D7ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:mime-version:subject:message-id:from:date:dkim-signature;
        bh=GejQxaYhVnAhg+RcMjXX7Ucxjt8bsIK2DQBt2gkKNhc=;
        b=Y2ai7WCmgroOCVU9Kr8veNSOYJGPrOcQWl77VGQWHLysmqt7Krdf/eKppJGvmwc2Bi
         ggwaw3WZBwMqSv2We9cSYjfsx6UeeTgWlECAogJsx7vzY2d5PqdnqlnccdLQgAIL4668
         JRUeYXu/9t95fTfPPqsTSLZtdX98FqW8xVR82+MnRoczntmM7aoqyKs3GF8ucho9JH5N
         j5F/9FOo4QrWsO1VyamgBQJ7y5TEFMLp5+4+f+VoH0RcI9yJI0iy5ts1vpnqWL0pqWe7
         5DjJKLxR4smSSVmjje/dYagE7axUADP/qn8MEOyvtHdq84b2yB/m5+HGJQ85o4GujSh9
         Q8Xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.co.uk header.s=s2048 header.b=WXzyADSJ;
       spf=pass (google.com: domain of federico_quevedo@yahoo.co.uk designates 77.238.177.147 as permitted sender) smtp.mailfrom=federico_quevedo@yahoo.co.uk;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.co.uk
Received: from sonic314-21.consmr.mail.ir2.yahoo.com (sonic314-21.consmr.mail.ir2.yahoo.com. [77.238.177.147])
        by gmr-mx.google.com with ESMTPS id 16si124088wmi.3.2020.10.28.02.11.01
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2020 02:11:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of federico_quevedo@yahoo.co.uk designates 77.238.177.147 as permitted sender) client-ip=77.238.177.147;
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1603876261; bh=aKFFvY6RwtMTr2qHNpl0sZTMEMawZ8oEus2Sf4BDOmQ=; h=Date:From:Subject; b=Yt3c3ue091n48Uyjw3fXhBzSVRiKon0mUkvxUV+nxa36Ix+KxBZwsiMzVwilTeFoeaYbr0n/vIM//6Jf50VuQ9uwiYjDY5y4qKC67xGCpQcnny+j7vqP8NOQQi2GhpBPmf5REIwjE8R27d68esN9N7FdFz4sA8efjm1A2baibeRIW/yTw8PxGeBQ+KADmijp1SQF0NoX/oLSNgZrwOZboxrowv9SKw402AtFHj3GOoKwTyz/hTcZP8FJXruVKGAg/ZWkigtbaXauoEZ21ei1HFxBUloh9mEYzaliCYUcpvZ/ZOAbjmmLOSz6zDY7/ckAJGi6jnwiyuxj/b4Fwyu+Eg==
X-YMail-OSG: vFYs_PYVM1mB2Wvoc.j7Ndi8Xs4v591aA7r8DfjbqLe98xTSfwCjUzyZzKcGC3E
 znfaoqGYb45iFuuvoq.5J6SB_RmHkC87DWyWzZ0H4_fJjp93dUUfHYDzg33jK2pR02Se1V2kIjrd
 XbwBZ93FeDsdlFy02oe9Y9zl1QgrgAkugyRQn8zMVc5Lt_XHmpdPGnvJesxnwCkdFKYZSQXriLh.
 inif8d35NG.W8QeEEbV_sn4hwGN_v.R4VLLOV1wZ9bA8kOVOTJ0x4ZzWU8Ey7sFD38Se70M7eU8U
 q5bGPCvtur6AOBswdD6rI9bC_YdAWYv5TAajdlaBVCKuYyHO0HL8nXaJGRJKjp8UviYjUnGzTPDw
 zRxmQMbPn7GxWh6HgSO9TKMywZRidqEsFQv6vi3UkQiQQ9xKqrGmEROzDw4AYngQdvqo_W57UyG3
 j5ExajcwRW016uJCPhkDOcfp8vl5HQbnmB1Bhl.URvmVXMRJoMO5KQZIZzWF9r291djxHqesek4F
 8XdPMX097Yin3UUnpBaR6HIiA94aWdFQp1hWvSlQ4zYOYkvq_eh5jrfM6A0OEGHXT0prDx6L5UUL
 _383gE4bv529JBvqXMeO7EcvB5VPPGGyxu2ThT4k3AH4YDTDb1th5o8UiHMuP27tKIf4t9NA2etP
 oEtEQEJVUmkT983T3DhgM474TxuHHOpHvYmdrU80XzHmkZHqfwyBtTKWVCkEOgVhn9AavZwzYOkT
 qhQgZl8Xd3amJYEOSnGKMmaQJ6ihqfvoLY_6NvW_Kf_rL6lRQhqi.nQOdpqNlCQmaAFqwm1hnypY
 qeNztzr03mWncm0437r6yxJ0T29JONB.PYqVjokKf85uYIwPi3DF9TMissBdLzAetFZaQW8gBiEz
 mXoH1jJoBiXZR.9ZOseXXN4vVL48YyEM.D0gYpPIL5vWwQARgtjiFebTOskJEmWUImV_7kF37ED2
 oKdzx5rTcMgWUC_n3zErYgT1U6NiEd.CUxLYQolDA.KqKg872w48nErc6A8.NlW7QW2C95mGhXnL
 VwLI4AzxRBMlRW1Qf6hgWV_5cct9Wwh1xfWHhG3B2WDQysIyntuhgLSZBFuHVrrfs3D.l_RnOuV.
 sSkQrovRowQn6P4pxDpZGJEMhI56BL2l_1hdT8HDcWIXdR95gZF6fGdpEz7Wq23JErIfdaWR78uJ
 ygwte7cE4zOls57klHooQuQuzbjLtUKZG.vSwIf0mUXoi6piriK4WKM_Y9bcwIikoTAtj6Kqp6Gk
 16.kMJDrUDo.0bTDHm41KBUzzo_TQoUzyV.bzYU5sZCdrmYVbJVkBhVetVVvbeV39b3n34sA00Vv
 Ud8SgdvcoeeddYbUkEsZ9MWKge6rBGs1VSH1AHX_ggzYeMsEeiUW7Wwi0gk_PXL8n53LHE2lWyj4
 lVMfk4xProF1Syq2Mb7iyX6MEg4s7kfyRMeT28JcVreZk7Z8t9tofg5tvcTTfgqJBEQ32IyNDuvM
 jm3RtsNDpQXZUmkTbZvX4iVKZVN0muu619jcobL9XwSMQYtcVU1bgO07OsWNgrEgsiARUuf60nf_
 QKfBRVATWNx_qAJQ8YoBKSaKxiy6DGCeMMVANdaG9D8wkNyTWk.rnnNeUL9t2fNHHntsT6kbgStD
 A2bHoOmlPcVuot0Ktq_1N7cAxEoQ3ua8iA_6WsKrfYGW5LQBQwjHtpuG0b0UJGtylSil18H5cDFQ
 VlBIJ7r7EZuvzgrBfTV3AZ4bRHZpolZlc9KHHeToRcaVH0WLl6pNKOIvtbTbicM1jG49DH80AXGF
 vA2k_Qx4JpvkDcjSDsjeOUlK7GEZda9c0mZNHlyc2nVUGhdI12L3VG1Ts0qczRkjabeXo3E9ef4F
 HMkkFO1FjGC9f7ggVYtC8f7qs6H67LJ79Gn5z1q.F8IpRZc5PDCugJy3IZDRYLurIGnesTQkEoDT
 R8T1BRCmQag8zw8Eo_fRVlfh0brDZSIVRvGnEebJ2FyvT8A13Ki3UMV65sH94jUk1yM1X6W.X.J8
 Vf9NoBFgIzWrFnFcSpm0RzKqr99nr9PYn1oB8HX.qmYTulHO9U6RDNu3pdWluF0xw2_2QxxxZ2ie
 p7YVM.uCdhEIoOGYCD93ynTXMDXsVaj6.cQIQwBDptrYeTDfMna6eRnMstWR87YRa3r2Pl9eGbId
 cESHobcQFS7Au1jcPRF3oyRMKJ2cH7h.oro53EcVPnUKe4NbZq72Y42p0E7g6bvR73jQppC6OiLL
 Dy9Frbru91ehVV9i3uRbLnUDFXJ64yiGp0DNipOJJGD9XoaFa0BhNke_NieohLFUaNbQBEhGt9eI
 uFwk6obp26ZNuXFfKUAfJ88jEfhdX9NHMRXbVrLOg6eJAcOODflJK881qCFxOKmtSAW0W_xeZMJe
 5RIgRGoEN7zz_RODzvWVYGnBhTHr8N3f_gJT2G2VC797BDq.uHFM7.q5GdeOJFgkZGMeW4pH6XMs
 xeoD0z07vBt6G5gtxIl4KakDRnLVScMxhfHisezv9rz6Ks5AiXH_uQXH5VXbGxwgZsXGInFBMrhB
 G3Vrmc3UvkcY7pwbx2nEwenzBuSgBgUsmn2g8ATsGVSAKc0FPteqU0atr1jk4Iz8Gq2PI.36XkQv
 qM.bb.bUIFeDAKLkMc4Z050HltuBuOHl214udvSdxG0E6eN_2.7WItvcBMntt2WcWUqCRGADWasB
 QkB0urMRXaZlu1bkc0pjHgkm3NuMlM7W0JCVo3DhXdiITZ8hSbCk_prYlOzXoJwo_BfuYBS_CZ5m
 SPNYPUBB4A_WvPR9mjoQyfAkJiIDRLzh0gLClaMQRgjl6qLCSPYp6BVBUgsQhijWABdkA6oxX.kD
 8w6Z9yp3YlK2gRKnyea201UXGDv5_JPD5K5iuqyCdVn8oaxp_AAsz4BXoQCrzE5_ZzU2N7tB0NQc
 0iVjp87R3JlNhRBAaFWk5cpYFAk1wBQNOTyRUX1QI4qFOoeb6pi8gcifF2hN8epY0szgeqnZCVOe
 PNd5jP0xSS7nKM3AVj4oa5uOxgvHoQ.p6tApQy6VbNSbKcAp_zmlJaGVsMWsFtuTu.DDit4C0oEZ
 TNwPvIRWL1KyFMQsy5aWL_9iaMWgBBmsxfqjuy3OxfrqRB045poJA8UM0OxzGF9PfDNQbrju2NMZ
 Olv.TAggyoI19PvMZ657yQeSX9De6d.zAxEXcMVzjrHdv11CXzZunilQZsbrZRoevP_13RkjmX44
 RJ9V3J7_kfEx0iI8FE.6j2pKa41Jr9bEcMbhhtFNmJswb.g0VYBhEiq52gPK6p1YihorwOzAx.zy
 kZmwz4jrLg5lQH1VZCOpLS2pOgrFZpKu0sZLZ0Ap_q7IOasG9L7rQwYuUSE0OxHy8u5yAmK.jmpw
 it7RUdGAFRZ4_G16GyLKMBweJkMCaZ.JKP6cx3RBrBE0xE8sy7NrP1ztn2StZX2Pi_ots9MLMby2
 rEIdTeQ67y.TLHfMxvqw0SiUBKoS8bXFImCG..SmXDkTjUaZFbGAAUAp8xKJvyOv7lbQPe8RlL56
 Pmx0yf2hmSrWTDv7TuyaKymVLvwYvo5.Fu6CBEUiJQO9fzUuUsvY4YcE6IOTgAHBCDdo2_mggGAd
 bXWJWlVPdpJAOraFUPDiulne3xVhi2fUTuGI7c5GZ2CFjeRAF.FqyGtG1PjpmGnWqKam7UqCqcs7
 OdwY37ajaJZJ0EnvH35icP1tFIc6WEfwu9MmVcKfo7n7jt_HftSaxDUTMWyWPYcDqJnlO98neWut
 BMiHDfJay2mGDdzT580n6W7jdffwD52Dp0GtNKqqF1OZn9kNm9ncpX2M6UPXb.hKG2uLfqoR28nP
 FOHUhlSF2TAIZdvcXD_lYjfT89Axq1mOK62KjMFuaffOWq0JYWYPwPch0SCyarBWM2aFZyF2eOib
 OPBkwh.7OEbAVUTwHHGwNuG0H2eYMeSY36QsGAaY8EbloD9CCjuarChNJI_d.gNpPLLbnSVSu1Fk
 uDbcqIzIDcHD6C7IVbzBBcF7h7Je_71vgDCjxP99ZT4ytsnXm7E86ZdHz_CMQvhL2jRI59nSTvyj
 xg7CdKy84WYGaYTDuXa4PQu9S_A6gSoNefpzU9F1Y2GGn9vXVUkgoCQWAtDOD7zwGV5..TElhtCZ
 iTx2J4B0nzU5ZPfFB0bQeHBaREPpvxgysCb_CMz7wmJgNX1dxCKrHmPpDPuuoexk54d0yS9ZcMvW
 7V8QdA92pODRX4TJMx7Wi.bLi6zovQNJV0aW1LWgCylJjlou1dUraz5KXI9M_O7mxFfhzpIE3eTx
 8RluvZMwtdhlaTiU1qtOWKKxkLgTdu9ebMi9LOD5lPfHXBCB7CthwfEdZ4nzRGWUGh0CQ6etckBX
 1gpvmSkNDr_KbMRFaSrXGVrsjWUkwJJIkAVHXB7PtacyrDyZlj57k2npRVOckYraafVHXnVOVg4m
 PiFHe4jM4jq8QPXAuDG6ZvJ00BPf4HJt7SFbi9QQzyrOTETj8x.6PylQdIUFr7radJJfTbCAVLCn
 .EVN4WzO796wAn3R9foF8WUab0zuJijUgagQNnXDT0yqdpcoOfSnnDrEK4neFkTZsZLY0S2TAVJT
 4m8Ko_yrK6C.v4Z0AAufcpo1WJzfbB27bq_7BYPy9L0517WdBExbWpiI26hebA1fDG6Ba3OX4HGA
 4ox3Al3W_CNwFkZAOLmBt4iV2uLrltteXsq2QVIkzFJ4CKwn1LPn62_NWUHb_5mD4o4WRen9wJuw
 Z6Lzvnc0cyc6XP4vRTKP.HYDL5LV..QvsT6OPySZFHd.ZyQGyM4yj3XRSJSIGVPtq2ipmAo0Yklq
 LQ_V_hw.u4ATGU8447ChvmDv9wKCXTrJed5R3dwaDOVhzKCtTrEpxOTj9zOr9osxIgxzdlG9qzg5
 o3DwitMvVBBTNHBGZZZaxV9KZFUPayBQlNrzCBbeSp_tXomVcGObSpbnMwCYqXnLDWnEaa4s4NN7
 CsUD7diY3rVvraVgFHX6RQYidjuWLs8OiXUcW2HEpMKiNejoTsd8AJAlUcOcivibeXvzYV5ke3Ki
 HXR7bEtFW1K6kumW81Zg0fFhodwgVHI5.Qkx.Dmst8CKkMstt_jRwy7l7gBBBGSIID76.ipO9kNu
 qfoHt45LUYWsv9HaKfV4Da_iQih1atYj4qqHBP8VaKYdhF0kT4lItE_QYnacOp9A9xWNwSi.0qZo
 9C1p9Awv08idokxUP4THg0zdh8w1pwz7Jy1jOM3DMtJokqjXtGFV.fuKPPDDKKmgWIyBweJyqr.5
 .z82djnUuz3kbR34rCLOB7eKU0P8.PiefBt431UbPMvOU.FnWhukoeyMSdqGC4DtoyYHYDQfM.oB
 DFqu6mtUu1MVGeQez.VbYnS8meEkWm8BbeH4M6TfKKUNC0Aj3GfjnwMXbFE7cF_Dkzk4TUkC5BRJ
 m4XaxzTgSbyeRUZdF7YgiH8uY5qs.scCeC9XounWj6rsmiySBPi3CP8.QyvDaShMgOKaICPCncaj
 432KnYcyUjfLqRRMJQpU_d.3zMQ_S6ywAy7rxvMfRpqY8.m0SlEx5TD4BRRBc90XgiNhOXsMY_7t
 BH1QVM7grRJ2YzHau5FHDzLzwA282yxLlUYcuGuhUh8P9__FY6OEPjAPyFmoUpXFZj7C.CfEmApq
 39QDr4gxrHsGYdqT_HPjIs8c_AG25qB1FmrftHJI5UdpcevmiUHCMH.CHutICAIWb6M0X8v1ExEn
 cnXsIhRil6_hJxNjYKa1NTRQk_1cbqR7w5Zw.19_t1D2mbv2ACwg4qC4jZen96h_5x20SfRXvDBP
 XwiyDfONyGiexhe8CFNHnpkvdboqb8oLZLU_7VwFsHMZW1MLAE9889tejjVUxrM1aYY6cgaM._dv
 D5OpgKue4n_M9hHLvxMo8tzWO_knL.ENPRvpXiKqd5Mfxgv9av11DEnzuilNfNIetdKrLQFK.WG_
 WMSl_g6XWXJkCAfj5XTAXGF1CXkOV9rVngv6yboGwIzYJL1bV0ucTxXfge732BkJ62SXKxwcarnl
 5Z36eM4ykJnM.CcrBXJHAh9dWah_jWXnZubl54GM4tmjVpZpm_XmQi1YNST4neYthTPKa68Et5R5
 3makVxT22RrZxzxJ0l4MAIyZjKiAVLs7Ah3XYNu1YERyDlv64cBiDqiZEuUVFIgk82ZpLa4fNbAN
 4SiCwHU2Av3.hPY9swln8VI.yUogbyS_DSOadduagB9Dc8WOcKX6oowqQ_.5vmhAIYPNGEeKrf06
 ALo2W1r2uM9Gq9fu0d1BNe_g5VsvcTfy1kIa.oAjAesJBJHOHSHU.IEFGjg8E4kPpdwhsl_1H.Al
 He4AFXoHC8Q3qrbeI9e9Mk6aAvAVvvbNWqBtziM6H7GlxLxsri9XX3CQARrDA6pemgmLcIbeoUAW
 47wkKGHGhfGKeLdaWjQll0R2EgBjUmxrZGin292KPGe.jMSdJakZHJ.6ZJrgxD9IgI0grczeFpvO
 ekdywxYrXO5ZwrIWknRQ8CRDRDIKm4WO8Uob55sbb4rqwU3tfSpV0zGivf_GNNfbLP0vr6psHLhI
 WWiWssmTlGAAfAKHjplB4ulxXAxD36bJr2xuPSH0jbMU7hN6lPPUVjCioy59WfwozkNizZbCpVyM
 tuTO0DjPlQoZ4PIm.VCB4_faRjlHTq33toEwe5afSx8RvYKS3qv6U9r.SZZbjnsuKNWEBeeSITz4
 rTySE2R7zm6NyaMuaBSCTCr8fQWgdmsKIugOroxvlFO9zjZ7NpSSSaNp2MbV1z6R8lmvSTrhp_jP
 jtq.KPyK2gdKX2MLwlj5TWAqJTzNUJxfAy_.rKafURCUPRPD3Vt00x3_0TzAhV6MnwDgbAyN9gvc
 vKKnnMaKN5mCpyQUGS8e_bDfEQ6riX8erMdM8ZY2lX6H8csRZ_rQg4WT46NTfzfrE5n7_u_ZoI_n
 5zBWFwDVuErF06X9GBGM5BgNdm8aGW2zsgKfcm7ha6GQr9pzihPD03zq2uJ.jlitFA_o6pb4ldhp
 10Qyvtt52r_6.zm9_sKGCUqvLzslrNlQfrhFj8ZXdxniID.uoyN7hObKP._Ig0eOuZQOIf.SyDuO
 TP2Xvy2aXANQDrlQ3BrdSZwcsmUnDqIzbxJv62lPXyhT_lBLFV7RgwdmyOiT3kakaq3g59NYkTrQ
 z7Y0GrudBqz63THBLScWHNON5zpdWjnYB0XxZVt49jvp.Pomyaltr8yhRjwPL5wW4MHiiqqnk8Sg
 ZBuYcf51pdGwQ78iipLY.5d.jjZzLRUnUGlUnDTYnjIjfCJQoStjF3Q2er7.F5OMGXUqEHu3a2Xr
 nu.mulBiuCJhQnjquB52baCj9XO0aCZLXUe11iZJbhm_oOiLUQh.oIZeusYXTO_NMUXTKvKR8TLa
 6SA.rBiukqydMKZQQbiPAG5ZnlN5rEVXMvx0VvntA9W344tYyGunGkcDZh1Ln7AoOZwjXUrRwPlJ
 ietZb5nGVAXbkvy6k_3SwUKjccxiRT5GDagS2bHS5fUtXgPE9cDMrrDsP1cAWBjHEtuFw0dyoYtK
 psDcJTKb31CUnYfZls.74AVPDP4gao9BIfE_tbNX1sf7liwJRyHGaZM1TiyWCcqJ7QaatWf.FD6C
 NKz_yP0a1Ekrc4M.XBOEUTdhwahobd_jSQM6ZrhE4XY8xT16lubnrq7gK8zug54ptu_q.P1chMwy
 uyveHSwlcGMHKgscwIEAyBv7EK_ie7_Sa7e3UpuXo4CsaLjDCoK8dBZsQD4TwKTx3sn6eqyCII29
 gqtxjDJTOJgoBDZZy3kupGIZ5xEV1DIioX9Sw5ChuHtEuDfotd5JUE.a2xBjUnbhhL2OUc_Kwvd.
 7uaxsOA_q.TLjog0JtPqAe4HsyDntYYqEd60nw_4wicsGX3SZJwP5wjNhq_8HU_7KBCPs1vBhtCv
 tdOJDtteB2XVNjiXFqwwYy0oAryUm72jqeJO.Ux.ErcGgo8fPSAKec4JxAlXJqj0DPA_GHaKUpmg
 oIDKwQUa_o_R5YHvbKGxvX2Ls3kKI_25Bk0kU9yVCEwTt0S6y0MxOIMnN8elXrIq_GEiBdzQpXGK
 qESLP._ghoBU9bkV9o4K2VOTfjnjOkreGMoLJZdBD9EKUWBEwBKZHmdg0ZMkMwPaSOl3fi9LgbaW
 N0KY38wxPDFde1DNvxwFSo6zdgqM892Fi_EY1lli0ag41tSunxWE8aT9r4DoopRb4Q6jl6NdFyUm
 NLjpSX7AOBhiK240UKMoW6MPQ2rIQzy4mTWUbMQynnwh9HmMqX4n0kruEY0pFzC5zU7kb_jHo29N
 FkQcpIpfoTqrBLSGAcPzB7upMz.d8IBKgz3H6FvbztCWLy.fVb_Jaaq53pU0CNuxkEgJ.1TDc7.g
 T6qmTt3rcM1YlUkgiWR7heHqYuLzKEBY6P4DJec04VAClxF1t8OELcqCWHARxKfNpSUp5H5BhdfA
 B4Gfe6gCERWJltMgB61lKuhtGi8aDnjXttVkw7WKx.wgecwoHHDEuQjePkRqv0PSiFJtTsLAiiZI
 SddbpF2rQRlAUs1juSHnPCs46eXtuZ6eOe1FrkwqR6XmwQDmEefKPQYd4B1C3KY02WII_jMLULO1
 0ozjuhaiM41p79ieknU7TOzoyCaSWIAlYo8Ezi2YkT5A9ApybXyHeItPLBIY6PSXBLkphS.8SwnT
 fRvIupq_s2uszsW2cE6pFYOu4B.3m0_O.asZcVp8pCu6LJlS2fcLw.YUi83usejrhHOnQr7XHah7
 EhnLtWnWlXtUU3YA.6vR0LpYI9ZBez4JgGJRIdkxDBOlesaYmOa_Vz_UvynlyHJ8yZSRUbdmzOLS
 BgK4uaF66N2D9Qk6ru.QP7omNGvtPnYcybiasNpmjUtfvs3XVWun6IJq3dq7FC0YabyiQ3gKSdJ3
 8SDWcZx08XWAbBrGPtv57D7hItZvJrLSJGlKFgShw4GyjVfkzXhZfFuNRS20_5IqzQM06_stD3JV
 iehMCit2ktCCfYY2GT8rHuSPE.8npIS60o6NmAbZN3Dig0WgG85nV.DP_4p3YCd0qrsPy35PTcwf
 ddrFC7faeQ.CZD9h_aKkhMKXRALjCIk3t9d5JwQGNbBz4gyrr.wdGFg0TWygjc_vhh.Sa1hoQQWt
 .nar4LpeFafYKPMJjuOcUPrsLfW9em1z5a1q6lc5LhcnnwrzAsVAyBm9V0hm6SB2203AXaJaWyOa
 N9TBodB_bZXr3fqJdeA.YwNZKMmSzuTktdEbn47MFrrDLeEtGt7aDmZCeMmrsr5FK.zkPt7zFK5i
 mPAJbhwIbS7IVHpBeL6vUjRWvT1DwzudrR92In9JwwH_37LuJfYqHC_XE4.fyuQGvexq7v2PwD4.
 qFgIf58Y6gmqgXR5Lbn4pRBzMe3eH1nMpPdiyFtf6qSlnn3d9j_YvFXahqhGcWba6R0e4FB4MOBX
 Hbg_V4qI7M2GYQISWS5e44ncEkkCHjxrRlQkiHK5mYVMOp3fyOcuuZQyYg2F2A7q9DkzvmuIGK5d
 OYccRPRPmDnNesPb3aF6HSR0U122fV9K0Rfla3HQezNMyXuWYjWvVVAebIWrOJ1yKd_o3Nr__ZTN
 2cHIV0cLQAMBVy5c8_IOYo2sL.AwGW4n4JXtVB.0mM26DCFruR.L1zopQu4X.6E.MT7nzlw9149N
 3Ut9rGos9AnBn82NKobBSo6.eIiLBqDPq0_l2r_KRHY5PEQpu9ez_tvjblTvbi4NGYNIYGxXGMKn
 1xs0okckDFlcV1M.507WXfnYk.mNZzBYY9o4ojwYajJKNXNitA1m_VMp6UaHRRWo7nO61dLXgjXR
 i1NQoofnqTvqcTucr5N_8CqzEOrcCzlBxq7hSHYk8XKifT3Mxkp41ctzRNfrDJ7NVc3l45LyXm0Z
 xOOa1qUKBBgwCFRCxWCWJ8YqmmPnef_bFeDl6OwXPtzx18AsvUBm3_KdbJKBqERg5ttv1Bs6ExKH
 W87Mwep1z5HxHoKMMpraCxC0Rfa2htbjzzcgRFmwhVe.xYJ4VJwXCC4xqLBsifEluM20wpkoKaey
 G.rNW
Received: from sonic.gate.mail.ne1.yahoo.com by sonic314.consmr.mail.ir2.yahoo.com with HTTP; Wed, 28 Oct 2020 09:11:01 +0000
Date: Wed, 28 Oct 2020 09:11:00 +0000 (UTC)
From: "'FEDERICO QUEVEDO' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <525698599.6588543.1603876260342@mail.yahoo.com>
Subject: COVID-19
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_6588542_1834347280.1603876260340"
References: <525698599.6588543.1603876260342.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16868 YMailNorrin Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36
X-Original-Sender: federico_quevedo@yahoo.co.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@yahoo.co.uk header.s=s2048 header.b=WXzyADSJ;       spf=pass
 (google.com: domain of federico_quevedo@yahoo.co.uk designates 77.238.177.147
 as permitted sender) smtp.mailfrom=federico_quevedo@yahoo.co.uk;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.co.uk
X-Original-From: FEDERICO QUEVEDO <federico_quevedo@yahoo.co.uk>
Reply-To: FEDERICO QUEVEDO <federico_quevedo@yahoo.co.uk>
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

------=_Part_6588542_1834347280.1603876260340
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable



--=20
Dear Beneficiary
RE: UNDP -COVID-19 approved Funds for the year 2020.
The corona virus has impacted on us all. However, to help addresschallenges=
 facing the business community, the UNDP launched a specialcovid-19 Respons=
e Fund of ($8,5,000,000.00) for each business entrepreneur(s) only.
We are glad to announce to you today that this August body inconjunction wi=
th World Bank have collectively approved andsigned the Release of ($8.55,00=
0,000.00) to you, as palliative/Stimulus fund as an entrepreneur.
Application Process:(a) Application form will be given you to fill and retu=
rn.(b)Your direct telephone and fax numbers with whatsapp number=C2=A0(c) Y=
our means of Identification or passport id card=C2=A0(d)Application form mu=
st be submitted within (3) business days(e)Applicants must register genuine=
 details to receive the said fundthrough our accredited on-line banking ser=
vices or by Atm card deliver.(i)Payment of $8.5,000,000.00 to successful Ap=
plicants/entrepreneurs ismade by UNDP through our accredited bank(s) in Ame=
rica =E2=80=93 England suchas Co-operative JP Morgan Chase Bank USA.(ii)Thi=
s procedure is confidential and only for the applicant/beneficiary.
We await your compliance as soon as possible.
Yours truly,John M Flint=C2=A0Financial Resolution Department
Whatsapp number +1(571)444-6846E-mail: inf_orev1@live.co.uk=C2=A0=C2=A0


--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/525698599.6588543.1603876260342%40mail.yahoo.com.

------=_Part_6588542_1834347280.1603876260340
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp38c1a7b8yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div><div dir=3D"ltr" data-setdir=3D"false"><div><br clear=3D"all"><div>=
<br></div>-- <br><div dir=3D"ltr" class=3D"ydpe02a3a9cgmail_signature" data=
-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>Dear Beneficiary</div>=
<div><br></div><div>RE: UNDP -COVID-19 approved Funds for the year 2020.</d=
iv><div><br></div><div>The corona virus has impacted on us all. However, to=
 help address</div><div>challenges facing the business community, the UNDP =
launched a special</div><div>covid-19 Response Fund of ($8,5,000,000.00) fo=
r each business entrepreneur(s) only.</div><div><br></div><div>We are glad =
to announce to you today that this August body in</div><div>conjunction wit=
h World Bank have collectively approved and</div><div>signed the Release of=
 ($8.55,000,000.00) to you, as palliative/Stimulus fund as an entrepreneur.=
</div><div><br></div><div>Application Process:</div><div>(a) Application fo=
rm will be given you to fill and return.</div><div>(b)Your direct telephone=
 and fax numbers with whatsapp number&nbsp;</div><div>(c) Your means of Ide=
ntification or passport id card&nbsp;</div><div>(d)Application form must be=
 submitted within (3) business days</div><div>(e)Applicants must register g=
enuine details to receive the said fund</div><div>through our accredited on=
-line banking services or by Atm card deliver.</div><div>(i)Payment of $8.5=
,000,000.00 to successful Applicants/entrepreneurs is</div><div>made by UND=
P through our accredited bank(s) in America =E2=80=93 England such</div><di=
v>as Co-operative JP Morgan Chase Bank USA.</div><div>(ii)This procedure is=
 confidential and only for the applicant/beneficiary.</div><div><br></div><=
div>We await your compliance as soon as possible.</div><div><br></div><div>=
Yours truly,</div><div>John M Flint&nbsp;</div><div>Financial Resolution De=
partment</div><div><br></div><div>Whatsapp number +1(571)444-6846</div><div=
>E-mail: <a href=3D"mailto:inf_orev1@live.co.uk" rel=3D"nofollow" target=3D=
"_blank">inf_orev1@live.co.uk</a>&nbsp;&nbsp;</div></div></div></div><br></=
div><div><br></div><div class=3D"ydp38c1a7b8signature"><div dir=3D"ltr" sty=
le=3D"font-family:Helvetica, Arial, sans-serif;font-size:16px;"><div><div><=
br></div></div></div></div></div></div></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/525698599.6588543.1603876260342%40mail.yahoo.com?utm_m=
edium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/linux-=
ntb/525698599.6588543.1603876260342%40mail.yahoo.com</a>.<br />

------=_Part_6588542_1834347280.1603876260340--
