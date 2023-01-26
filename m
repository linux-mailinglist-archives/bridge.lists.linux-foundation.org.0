Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0658467D8B7
	for <lists.bridge@lfdr.de>; Thu, 26 Jan 2023 23:45:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D3926118B;
	Thu, 26 Jan 2023 22:45:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D3926118B
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=OCpuwxPm
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hvT9cUVeOx9n; Thu, 26 Jan 2023 22:45:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id A2190611CA;
	Thu, 26 Jan 2023 22:45:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2190611CA
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 300AAC007C;
	Thu, 26 Jan 2023 22:45:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 208DBC002D
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 22:45:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E7906611B8
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 22:45:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E7906611B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KMfMeqyTbXsa for <bridge@lists.linux-foundation.org>;
 Thu, 26 Jan 2023 22:45:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BEFC6118B
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1BEFC6118B
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 22:45:02 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id ss4so9082241ejb.11
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 14:45:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=iE05OBNMo3ni76Q952FJPiDeCM0tKQpiRcc9yap5LRk=;
 b=OCpuwxPm3MTKC4NFGxVbHE33IbNPBEo1Y6BEUx6MiRbPDf8mc32vn4xArGwTO8Pv5w
 FCo1dJVl/Vppujf9pqTTwrbVpz3WSI3sp2tXZZPoLEnXtNTWe09mYY95dZOo51VDSxFd
 oqDZTQsRpYw2CNEcx5SI80I4CB6Zk28FUL49vE7EfvAWcfAjDd8Yo6wyya+JQ2VMPFU8
 x+ymjnoOGIo6DbUxtKl82JiWneVXFH8Ov2LVnIMLJsSAEwmV/oEwJTBDYvOesW22dQ42
 nTkUbIOOy21HZJ5jLSqJsywOUcdjjSsvuoVQysYpAOVTT8BZYnbPXW9bNUuTwsF7rt6O
 reJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=iE05OBNMo3ni76Q952FJPiDeCM0tKQpiRcc9yap5LRk=;
 b=bpOK6JutqYJb5EdCm0OJwPsymFDj4MGZf7HCJ4AUSGjpErmcmTW4uVOgYyvmZl9cP1
 S3ZGu8blH//TJW/PnBTa0Dh5hUBqy7GKQEqAEMh46MqNq6HQ3uzNS4aOMMsfSxsRia/8
 mOORK2Z8UjIKZ8+LsUeD21j4x445Dq2ZwDnr+1wlMtjm4CFDfR8TCaAmKpdHhIZRh93i
 L1B1XEW42rqGucILVcB3db0USqPmqrnWvwd260wXSb8oFudnDFtTDNDKb9+yD9awT7kP
 AuxhMgbc+3ya94riTDMK14CAmqVab+8KrRONNalk0pYLhXoau0xYJjnxXCTjrnMriz4g
 fiEQ==
X-Gm-Message-State: AFqh2kollG3fCfJ2Yl/xfpayUbfXz+kzKMsWcMQAG4K5UEQUnmI2+/kr
 /r7PycH5+fT/VucT19Tlqck=
X-Google-Smtp-Source: AMrXdXv7cSA9mZU4ret8ZfwrSyEIZliZVv6tq0jWHn6l9bxs8rwyAN01+t9ZKySG9jVFaRLKHF3FxA==
X-Received: by 2002:a17:906:70c7:b0:84c:a863:ebe6 with SMTP id
 g7-20020a17090670c700b0084ca863ebe6mr31751015ejk.43.1674773100137; 
 Thu, 26 Jan 2023 14:45:00 -0800 (PST)
Received: from skbuf ([188.27.185.224]) by smtp.gmail.com with ESMTPSA id
 ke24-20020a17090798f800b008639ddec882sm1223855ejc.56.2023.01.26.14.44.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Jan 2023 14:44:59 -0800 (PST)
Date: Fri, 27 Jan 2023 00:44:57 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20230126224457.lc2ly5k77gkhycwa@skbuf>
References: <2919eb55e2e9b92265a3ba600afc8137a901ae5f.1674760340.git.leon@kernel.org>
 <20230126223213.riq6i2gdztwuinwi@skbuf>
 <20230126143723.7593ce0b@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230126143723.7593ce0b@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Leon Romanovsky <leon@kernel.org>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Roopa Prabhu <roopa@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Leon Romanovsky <leonro@nvidia.com>,
 "David S . Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] netlink: provide an ability to set
 default extack message
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

On Thu, Jan 26, 2023 at 02:37:23PM -0800, Jakub Kicinski wrote:
> > I would somewhat prefer not doing this, and instead introducing a new
> > NL_SET_ERR_MSG_WEAK() of sorts.
> 
> That'd be my preference too, FWIW. It's only the offload cases which
> need this sort of fallback.
> 
> BTW Vladimir, I remember us discussing this. I was searching the
> archive as you sent this, but can't find the thread. Mostly curious
> whether I flip flipped on this or I'm not completely useless :)

What we discussed was on a patch of mine fixing "if (!extack->_msg)" to
"if (extack && !extack->_msg)". I never proposed a new macro wrapper
(you did), but I didn't do it at the time because it was a patch for
"net", and I forgot to put a reminder for the next net->net-next merge.
https://lore.kernel.org/netdev/20220822182523.6821e176@kernel.org/
And from there, out of sight, out of mind.
