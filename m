Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94195577644
	for <lists.bridge@lfdr.de>; Sun, 17 Jul 2022 14:57:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 14E79408DD;
	Sun, 17 Jul 2022 12:57:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14E79408DD
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=k4SKpSa3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bF8Aw2Bft6Zw; Sun, 17 Jul 2022 12:57:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 8EB9F40412;
	Sun, 17 Jul 2022 12:57:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8EB9F40412
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 42D66C0078;
	Sun, 17 Jul 2022 12:57:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5BA47C002D
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 12:57:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2C7F3416BC
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 12:57:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C7F3416BC
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=k4SKpSa3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KbfJp5sZa1KN for <bridge@lists.linux-foundation.org>;
 Sun, 17 Jul 2022 12:57:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36123416B1
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 36123416B1
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 12:57:24 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id os14so16820958ejb.4
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 05:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=2gmtNIUUpvopJUec+O7hhUT0Dno5h9V+8LiFQ4qDF9o=;
 b=k4SKpSa3N3YVNVsGETrFqgc7O1Gei21+1Bl7GKznWtW7g/CY4lqGhIVu0U8vhpPzQz
 Plh+/nM/rqhALQbZVIwSq16R4FXRKq1d+Yml3HubQr/QOkC5+adlVohA2mul6H6GMQHj
 sUrwalKo/99FfC/arjGzEpurzBOj5+/Hn2FszJYNlbrIlRKgT8yx6JX+Pgc9326oL/yg
 hq4wRuLrJiCpEsiQZmT0j4QBYzyQdwVveiB3U0qZZjqxie/GPYR4i8O13TTQbJT1GmOM
 UKxBmtPp2nRaBaKeS3tJ1ZOXUrVLNF77EnXNaSZeZbU64bNooizuYgajBY02YU37AQJI
 zxXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2gmtNIUUpvopJUec+O7hhUT0Dno5h9V+8LiFQ4qDF9o=;
 b=Urwgug8FikizvN9vVBuODWbAqafZG0oQ7BqYxI0BgMtB8PoZpXw/xYryRwZiUfWJTv
 adKLN1YlLXbL4dYDqgAbUjP1eVCJBxbu3xZpiSlmuQSPxOpFvRQCnu2FADW0+fAVwhbu
 NyhYREdqJmqfZOUB0q6mSI11Qrej8Cv8sbLNhiFfRAuLCNJNm6jvG9jM6UTrzpNuWCwH
 OLgcdpRA2u1SXk3/EhEAmsBSF+bSVKzXNxw2ybe1N2FrMU9uG2s4EFgCQVr7yBpFtCFr
 GAI/PycWxinkWX8P+oWBC1df2gCUug24RVNqRRMDIZYd/YdEfbx5T76zIl5O27odU0kS
 BhaA==
X-Gm-Message-State: AJIora8pJXjMDj7QNkJ0ilVXn1ZvgQzz9Ya2oB+n07xxRfKRvKGUaA5S
 T4qoqS/q/rPhfzsTv0aXFgI=
X-Google-Smtp-Source: AGRyM1s5dLQ9rJsisC51YqHpwFfp3KbcwuCasxvHsCLNpwLjQx6HndCuLJJNu1SVyevu2Z9pSZqboA==
X-Received: by 2002:a17:907:28c8:b0:72b:97cd:d628 with SMTP id
 en8-20020a17090728c800b0072b97cdd628mr21882592ejc.208.1658062642128; 
 Sun, 17 Jul 2022 05:57:22 -0700 (PDT)
Received: from skbuf ([188.25.231.115]) by smtp.gmail.com with ESMTPSA id
 b6-20020aa7cd06000000b004355998ec1asm6559370edw.14.2022.07.17.05.57.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Jul 2022 05:57:21 -0700 (PDT)
Date: Sun, 17 Jul 2022 15:57:18 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@kapio-technology.com
Message-ID: <20220717125718.mj7b3j3jmltu6gm5@skbuf>
References: <20220708084904.33otb6x256huddps@skbuf>
 <e6f418705e19df370c8d644993aa9a6f@kapio-technology.com>
 <20220708091550.2qcu3tyqkhgiudjg@skbuf>
 <e3ea3c0d72c2417430e601a150c7f0dd@kapio-technology.com>
 <20220708115624.rrjzjtidlhcqczjv@skbuf>
 <723e2995314b41ff323272536ef27341@kapio-technology.com>
 <YsqPWK67U0+Iw2Ru@shredder>
 <d3f674dc6b4f92f2fda3601685c78ced@kapio-technology.com>
 <Ys69DiAwT0Md+6ai@shredder>
 <648ba6718813bf76e7b973150b73f028@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <648ba6718813bf76e7b973150b73f028@kapio-technology.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, bridge@lists.linux-foundation.org,
 Ido Schimmel <idosch@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 Roopa Prabhu <roopa@nvidia.com>, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, netdev@vger.kernel.org, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v4 net-next 3/6] drivers: net: dsa: add locked
 fdb entry flag to drivers
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
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Sun, Jul 17, 2022 at 02:21:47PM +0200, netdev@kapio-technology.com wrote:
> On 2022-07-13 14:39, Ido Schimmel wrote:
> > On Wed, Jul 13, 2022 at 09:09:58AM +0200, netdev@kapio-technology.com
> > wrote:
> 
> > 
> > What are "Storm Prevention" and "zero-DPV" FDB entries?
> 
> They are both FDB entries that at the HW level drops all packets having a
> specific SA, thus using minimum resources.
> (thus the name "Storm Prevention" aka, protection against DOS attacks. We
> must remember that we operate with CPU based learning.)

DPV means Destination Port Vector, and an ATU entry with a DPV of 0
essentially means a FDB entry pointing nowhere, so it will drop the
packet. That's a slight problem with Hans' implementation, the bridge
thinks that the locked FDB entry belongs to port X, but in reality it
matches on all bridged ports (since it matches by FID). FID allocation
in mv88e6xxx is slightly strange, all VLAN-unaware bridge ports,
belonging to any bridge, share the same FID, so the FDB databases are
not exactly isolated from each other.
