Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 762F65EF954
	for <lists.bridge@lfdr.de>; Thu, 29 Sep 2022 17:43:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BBC9140B9F;
	Thu, 29 Sep 2022 15:43:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BBC9140B9F
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=networkplumber-org.20210112.gappssmtp.com header.i=@networkplumber-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=Vzksrx3s
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6s1wviRU5DoZ; Thu, 29 Sep 2022 15:43:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 5A90F40B7A;
	Thu, 29 Sep 2022 15:43:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A90F40B7A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 11E37C007C;
	Thu, 29 Sep 2022 15:43:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6F24BC002D
 for <bridge@lists.linux-foundation.org>; Thu, 29 Sep 2022 15:43:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 56294401E8
 for <bridge@lists.linux-foundation.org>; Thu, 29 Sep 2022 15:43:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56294401E8
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=networkplumber-org.20210112.gappssmtp.com
 header.i=@networkplumber-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=Vzksrx3s
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LIFCiaCtfZ0Z for <bridge@lists.linux-foundation.org>;
 Thu, 29 Sep 2022 15:43:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 548BC401E5
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com
 [IPv6:2607:f8b0:4864:20::52e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 548BC401E5
 for <bridge@lists.linux-foundation.org>; Thu, 29 Sep 2022 15:43:15 +0000 (UTC)
Received: by mail-pg1-x52e.google.com with SMTP id f193so1819737pgc.0
 for <bridge@lists.linux-foundation.org>; Thu, 29 Sep 2022 08:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date;
 bh=b7VI/lNtki3zEef+0LBeBHdkR7jGYNMrvxJja3PqG/c=;
 b=Vzksrx3sniIo56OPl72BWHlU0/Df8j/JQCbDZvy1EGrf7kGm7B2aiZfENf5gW44D/J
 gI9Z0IM1eNvyuoepwUgJtEreELCtd/Yi97PNwccOEhM6E0notm+GqKPkHLkR9oYsyKb8
 Yoq/pleXGN8k4RyGciZfN2tWjdiAPNPkdJ0GRF8seENVYF2FOicZ45TlpxCNGouCgsOp
 P0XmWHkJpwHysnW3nZxveeGX+rb2ESXrOcsYARReYp7X/HAFCqXhQu1KdtVjt8W5CRIo
 QDL3OSbkonYl6GqgtkUeoFLMwgh1qC0e+3cPxCbPucD2iWViRSqwTxmu6i6Uq7X8iEVv
 wfYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date;
 bh=b7VI/lNtki3zEef+0LBeBHdkR7jGYNMrvxJja3PqG/c=;
 b=m+Z1x19E+a81EkALUY5+BWpgnnePWERN4PK55/3YG5G72EjKwJrmnJJB2DndVi9bt/
 GOYxXLbu5QRLFUYV7CU8bhjyfUEFjlK4j+6VRacmQ/WpOK1mFnKgvekv4Hs8sEeMKmVl
 dbJtJUVxCZ8LskNxSdUDWhnU7DNuzZ0TLmII7CKs3i9ny8VXyFpbvaTmyWwBj7Iclos2
 T7gSM0bnCEuJzcAWEDER7WWw/7LpxEltbVz2zSH0mAA8Whap01UlHI00ZAQJeYhyxNmd
 a68/RlzaaEPwrn0iygQndRIpULNkyB809Bw+Jn080jw6k0hxG/nGliLCeAXdjM6+CNR8
 xF7A==
X-Gm-Message-State: ACrzQf0za3j5tCluBWG/34ajMSQnxUIolVMc0S/x5zQGqoP+1LUB7UCe
 Aqf0fYVM+LI5R7xhWQvszEgRYA==
X-Google-Smtp-Source: AMsMyM5rOGzlC007WW3U9p2PPqvx0IpfKhVuFQ42vcDUakNLelXGGyhbF2WyHTattavi5pSMM7s+ng==
X-Received: by 2002:a05:6a00:1412:b0:557:d887:2025 with SMTP id
 l18-20020a056a00141200b00557d8872025mr4076191pfu.39.1664466194646; 
 Thu, 29 Sep 2022 08:43:14 -0700 (PDT)
Received: from hermes.local (204-195-120-218.wavecable.com. [204.195.120.218])
 by smtp.gmail.com with ESMTPSA id
 z3-20020a170903018300b001768452d4d7sm56745plg.14.2022.09.29.08.43.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Sep 2022 08:43:14 -0700 (PDT)
Date: Thu, 29 Sep 2022 08:43:12 -0700
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <20220929084312.2a216698@hermes.local>
In-Reply-To: <20220929152137.167626-2-netdev@kapio-technology.com>
References: <20220929152137.167626-1-netdev@kapio-technology.com>
 <20220929152137.167626-2-netdev@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Joachim Wiberg <troglobit@gmail.com>,
 UNGLinuxDriver@microchip.com, Shuah Khan <shuah@kernel.org>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Florent Fourcot <florent.fourcot@wifirst.fr>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Yuwei Wang <wangyuweihx@gmail.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Amit Cohen <amcohen@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 Hans Schultz <schultz.hans@gmail.com>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Petr Machata <petrm@nvidia.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christian Marangi <ansuelsmth@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH iproute2-next 2/2] bridge: fdb: enable FDB
 blackhole feature
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
From: Stephen Hemminger via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Stephen Hemminger <stephen@networkplumber.org>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Thu, 29 Sep 2022 17:21:37 +0200
Hans Schultz <netdev@kapio-technology.com> wrote:

>  
> @@ -493,6 +496,8 @@ static int fdb_modify(int cmd, int flags, int argc, char **argv)
>  			req.ndm.ndm_flags |= NTF_EXT_LEARNED;
>  		} else if (matches(*argv, "sticky") == 0) {
>  			req.ndm.ndm_flags |= NTF_STICKY;
> +		} else if (matches(*argv, "blackhole") == 0) {
> +			ext_flags |= NTF_EXT_BLACKHOLE;
>  		} else {
>  			if (strcmp(*argv, "to") == 0)
>  				NEXT_ARG();

The parsing of flags is weird here, most of the flags are compared with strcmp()
but some use matches()..  I should have used strcmp() all the time; but at the
time did not realize what kind of confusion matches() can cause.
