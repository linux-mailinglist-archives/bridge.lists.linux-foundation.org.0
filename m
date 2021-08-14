Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D95663EBF3E
	for <lists.bridge@lfdr.de>; Sat, 14 Aug 2021 03:11:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF616605FF;
	Sat, 14 Aug 2021 01:11:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YNk7GT1QGIwx; Sat, 14 Aug 2021 01:11:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 6A4A76060B;
	Sat, 14 Aug 2021 01:11:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 234B4C0020;
	Sat, 14 Aug 2021 01:11:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B0D81C000E
 for <bridge@lists.linux-foundation.org>; Sat, 14 Aug 2021 01:11:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 84545400E7
 for <bridge@lists.linux-foundation.org>; Sat, 14 Aug 2021 01:11:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kint07non-u9 for <bridge@lists.linux-foundation.org>;
 Sat, 14 Aug 2021 01:11:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B15B2400A8
 for <bridge@lists.linux-foundation.org>; Sat, 14 Aug 2021 01:11:18 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id g21so4139036edw.4
 for <bridge@lists.linux-foundation.org>; Fri, 13 Aug 2021 18:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=PJhUcsspU97g7E83Bpc3xMjAAqh5e3B1I8VLV04Hlg4=;
 b=lvQlGkQMovEbhDOLkEx9FfNMFdUym7QHjOg8TV2oep0SJ3tQ8K2y2owZAeCFaow50x
 2VGtWy4UVBOA5Hgv2Um7p3LyrGWWlhoOMsocXgMiubAK4BqyJ7BiUZK3h2X8Llpv4ZQw
 k6Gz4suycc94X9lIr3rsjrX+qEQZi/OrloEcd4zZTfo40c/z+ms8sY96+2HI94Hbgyx3
 8ja3Youg4lK9LB9/A8W/qNaXmqTAfuDxcLGhYNslXyI9Olc4+3JxhEjZpUsjf3teFDlL
 2oSbRcOpVlSav3/aqavxHG5/c1qX5sqQlWvB+P/I/MrqlkhgtOERuvKS4J1xGnLwyj2w
 XsQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PJhUcsspU97g7E83Bpc3xMjAAqh5e3B1I8VLV04Hlg4=;
 b=o7mRnvaYC+1LufTHXgcZINCpi+liecZEcVogNeLsunFlrT95HZCtNUpwZf9k3Eglwx
 93EchckkHssUHKxS6RAFaXTWm92gDVZadjRygCZoyAu3cndORfjjILUtLUUuaav+9ISN
 gqhykAXvRhmwS4ivQux5bDDybbf41Q6GwTPW4iqhNyGlDCwmmbZ0utnu/GkXCN39bvIV
 ezafQLtEP0WDiMaN+TfZVjw1Y9CVlkqzfIzZhbOScERgZf0EMujdWpVtMl6mP4nVNL5i
 dTkn/MSay1pqC8lv4kimpBf9qN31FiTDYOAmYg6LG/rjJtddgYVsg74gyikuJxiHCtOq
 9kYg==
X-Gm-Message-State: AOAM532F8yJ9gNXC3/hnyBD9uqbvq1ejJQz3d7Bpeudg5Ci5OxcgZrLk
 KEYN44WNpFL2598sGAdclPk=
X-Google-Smtp-Source: ABdhPJzbEz1C74QjqaquNCIRacBK6HSghnVyTzV009KuRSd/PsM34mJM8RMUbtWj+RkNCDXH4rnY+w==
X-Received: by 2002:a05:6402:26c6:: with SMTP id
 x6mr6754557edd.175.1628903476812; 
 Fri, 13 Aug 2021 18:11:16 -0700 (PDT)
Received: from skbuf ([188.25.144.60])
 by smtp.gmail.com with ESMTPSA id q30sm1595434edi.84.2021.08.13.18.11.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Aug 2021 18:11:16 -0700 (PDT)
Date: Sat, 14 Aug 2021 04:11:15 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: DENG Qingfang <dqfext@gmail.com>
Message-ID: <20210814011115.agzyo3cydlupafvy@skbuf>
References: <20210812142213.2251697-1-dqfext@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210812142213.2251697-1-dqfext@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Jiri Pirko <jiri@resnulli.us>,
 "open list:ETHERNET BRIDGE" <netdev@vger.kernel.org>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 open list <linux-kernel@vger.kernel.org>, Ido Schimmel <idosch@idosch.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH net-next v2] net: bridge: switchdev: pass more
 port flags to drivers
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

On Thu, Aug 12, 2021 at 10:22:12PM +0800, DENG Qingfang wrote:
> These 3 port flags: BR_HAIRPIN_MODE, BR_MULTICAST_TO_UNICAST, and
> BR_ISOLATED, affect the data path and should be handled by switchdev
> drivers.
> 
> Add them to BR_PORT_FLAGS_HW_OFFLOAD so they can be passed down to
> the drivers.
> 
> Suggested-by: Vladimir Oltean <olteanv@gmail.com>
> Signed-off-by: DENG Qingfang <dqfext@gmail.com>
> ---
> v1 -> v2: added more flags

If you insist to not write a competent commit message which properly
explains the motivation for the change, then please remove my
Suggested-by tag and resend. Thanks
