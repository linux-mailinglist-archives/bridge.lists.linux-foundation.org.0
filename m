Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E50E606130
	for <lists.bridge@lfdr.de>; Thu, 20 Oct 2022 15:12:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9D147405B4;
	Thu, 20 Oct 2022 13:12:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D147405B4
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=mtCezQ/4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U_rVw2Db-AES; Thu, 20 Oct 2022 13:12:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 2FDAF40323;
	Thu, 20 Oct 2022 13:12:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2FDAF40323
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E0056C0078;
	Thu, 20 Oct 2022 13:12:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 44FFBC002D
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 13:12:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0893A41BB7
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 13:12:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0893A41BB7
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=mtCezQ/4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bKpCodyD3fc1 for <bridge@lists.linux-foundation.org>;
 Thu, 20 Oct 2022 13:12:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2919F41B2E
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2919F41B2E
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 13:12:29 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id t16so10582306edd.2
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 06:12:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=cmxhzVAL1YB+RE9j89rBigO8T8NiP9SDGEamja0kPTU=;
 b=mtCezQ/4ENLZOEF1WPhS7b4U4jsIGRd8/PAJOEm4TbfJXF5yRk8XLRAdPGb1rZLIEM
 p/oxZEQmdwWqqUzKL/pPjO8GgLAAJ5r5hhmM34UPgM2OefKojgPmrTT91upH6Idws/FY
 ggCCKG5kyBEaOPcLbYuFVfsMgl9HGFLc9LowwDzC/70CU5++MaQRW0jxIwp/MtZ4Njb8
 g7nXKV6aP1OMxofbQWswWF1s7ZavDCGMKolxCBlolWPqeoVZ0K9oZ3YFJ8cdDNSNXlQs
 Rv487MwL3WQScTQ1iSPS1IcoxpYanEBF8b2q4R5j1hQiKwsY70oHAanDE4HAvgVLUdTa
 gBVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cmxhzVAL1YB+RE9j89rBigO8T8NiP9SDGEamja0kPTU=;
 b=a5r7kQlLgRL4ESj8llZSpoUpdAoNfPUeTgDeb3tlkF5OeKAq0bQbZpx+wu7Dvrnq+O
 t2OY/dTmv/sOGuEpsn3YTsFwi+mm/jmZvvv5n1VutWUPFoaLAxvjIeJ+GrniMbXurtaZ
 emYjslulb6Swnh3SxF2IcJYfZTar43LFV+4FV8ViE+/CNlD5UNDNstY0Oe6XOQCkfHWq
 Y869qfqn2I5BsJoc9reM+QO3AWKZy+qCeQtuJO9KoO/XL6fh32X1PtFoMz6Mhi3ruobb
 G6D24xUnj+fjyznjPeI7h/Vnrbgs60DQw/9LMVDU1s6JKc4fuxswBk9myTE1otqZnNTq
 g3hw==
X-Gm-Message-State: ACrzQf0hRkcEJGe+yu66aRnwix+EhTDGkKEs4BeakYFq7gTQ5VvTs/me
 ZGZz1TleU+BVtiD84X0kNkI=
X-Google-Smtp-Source: AMsMyM4Ro4f7VYfhx3De04CJsNdaKBFDdssfYHLOp4Ppvmyr+30/eGDqR8g/m7v0AgMhLMN1ZRJjHw==
X-Received: by 2002:a05:6402:d75:b0:459:fad8:fbf with SMTP id
 ec53-20020a0564020d7500b00459fad80fbfmr11979743edb.0.1666271546990; 
 Thu, 20 Oct 2022 06:12:26 -0700 (PDT)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 p7-20020a170906784700b0078d9e26db54sm10373833ejm.88.2022.10.20.06.12.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Oct 2022 06:12:26 -0700 (PDT)
Date: Thu, 20 Oct 2022 16:12:22 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: "Hans J. Schultz" <netdev@kapio-technology.com>
Message-ID: <20221020131222.fzgq7ashy6cdatyt@skbuf>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-9-netdev@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221018165619.134535-9-netdev@kapio-technology.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Joachim Wiberg <troglobit@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Amit Cohen <amcohen@nvidia.com>, Christian Marangi <ansuelsmth@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Schultz <schultz.hans@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 Petr Machata <petrm@nvidia.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Florent Fourcot <florent.fourcot@wifirst.fr>,
 UNGLinuxDriver@microchip.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v8 net-next 08/12] drivers: net: dsa: add fdb
 entry flags incoming to switchcore drivers
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

On Tue, Oct 18, 2022 at 06:56:15PM +0200, Hans J. Schultz wrote:
> Ignore fdb entries with set flags coming in on all switchcore drivers.
> 
> Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
> ---

Some very thorough documentation in Documentation/networking/dsa/dsa.rst
is necessary. I'm interested in seeing what those flags are, and what
are drivers supposed to do when they see them, other than ignoring them.
