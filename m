Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4CC3712B5
	for <lists.bridge@lfdr.de>; Mon,  3 May 2021 10:53:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7886A83EEF;
	Mon,  3 May 2021 08:53:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZR-UFJNAis2f; Mon,  3 May 2021 08:53:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTP id 17F1C83EDB;
	Mon,  3 May 2021 08:53:43 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D8F48C001C;
	Mon,  3 May 2021 08:53:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 45417C0001
 for <bridge@lists.linux-foundation.org>; Mon,  3 May 2021 08:53:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 25B7440473
 for <bridge@lists.linux-foundation.org>; Mon,  3 May 2021 08:53:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20150623.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xrVHcwzagn56 for <bridge@lists.linux-foundation.org>;
 Mon,  3 May 2021 08:53:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A66EE40465
 for <bridge@lists.linux-foundation.org>; Mon,  3 May 2021 08:53:39 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id 124so7007050lff.5
 for <bridge@lists.linux-foundation.org>; Mon, 03 May 2021 01:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=YtUzOINInaYSLv1I0cAftRc5Acy9OQRqkK2xrgI5y9s=;
 b=elfQnWM43np1UUejnXyHYsWlgZtqbABCywcBfB6eKOjd2FoA7YKFDpjHVC//0Mn/x9
 d66MAXnKjW6y1NmRlxPKRqCsewvsZ4gOzewzrSW2BfGStMwtJ6Y0SOnZka67FJZQwhZy
 7f0E3xIcclfCFhKgOl5c10TmF1jTuhtmyNlLSgmULWOBIMAIzyajLQNhxv/TCiP+qpQb
 OFNB0hVYvZCfMz2qmCa2CQeWmpXk53R9CF8XLfUWMsAWUU0cnHVCXa40oUgJGbAUqOzf
 djdtVT7tCXl1KR4DzWMKnG8v3ZVHkA8Iu8tLScBfz5cfneXyLnvO7xe9uxGUH3Tkyrjo
 C9LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=YtUzOINInaYSLv1I0cAftRc5Acy9OQRqkK2xrgI5y9s=;
 b=ckH77shEKu7oQuv+3use9NqmVOgF3TxsyluUCh6bTCo0/cVAFdw7rOoTomUzDfivyf
 hOy4PtFy39Ck1tgnSJps2Y41hUkIGdWdP7cZOmExszFj8qIuinJF3ARiZOJnod8eMD4D
 0JehwM+FcT8dCZe8mMZUEmNDdoGr2/uEjT9VbX8ajskZduKY8TrPfUC/1+/3POatH54k
 LS8MbmyNCcrrT1HA1Q94huZZeG4NY4COFj7gK/0PesQb30EaQSg4/NUu9peOx+uaLhri
 EHS4nPyzVcE1wd5vsK5yVAa7675toFQbEkIRygjyqd2aLDhkvY2HISznBMICo7b2kCxX
 scdA==
X-Gm-Message-State: AOAM530zYMSv5dX70YeLgsPAMTiQ/YMVn6VJfcjc0yNZhp+jIHONduGX
 m0J7ss1XflXmJZrDdA2SvJA1knL3mO0Bpg==
X-Google-Smtp-Source: ABdhPJw/DQYQvuc/bPVXD5sw0KdGL88hPnQaEX3GNcMV+jcEwqOxu6/DVopF927dV95rzopmFxVShA==
X-Received: by 2002:ac2:57c7:: with SMTP id k7mr4882619lfo.606.1620032017411; 
 Mon, 03 May 2021 01:53:37 -0700 (PDT)
Received: from wkz-x280 (static-193-12-47-89.cust.tele2.se. [193.12.47.89])
 by smtp.gmail.com with ESMTPSA id o24sm1171591ljj.69.2021.05.03.01.53.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 May 2021 01:53:36 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Ido Schimmel <idosch@idosch.org>
In-Reply-To: <YI6/li9hwHo8GfCm@shredder>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
 <20210426170411.1789186-5-tobias@waldekranz.com> <YI6/li9hwHo8GfCm@shredder>
Date: Mon, 03 May 2021 10:53:36 +0200
Message-ID: <87eeeonqpb.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 vivien.didelot@gmail.com, nikolay@nvidia.com, roopa@nvidia.com,
 kuba@kernel.org, olteanv@gmail.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next 4/9] net: bridge: switchdev: Forward
	offloading
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

On Sun, May 02, 2021 at 18:04, Ido Schimmel <idosch@idosch.org> wrote:
> On Mon, Apr 26, 2021 at 07:04:06PM +0200, Tobias Waldekranz wrote:
>> +static void nbp_switchdev_fwd_offload_add(struct net_bridge_port *p)
>> +{
>> +	void *priv;
>> +
>> +	if (!(p->dev->features & NETIF_F_HW_L2FW_DOFFLOAD))
>> +		return;
>> +
>> +	priv = p->dev->netdev_ops->ndo_dfwd_add_station(p->dev, p->br->dev);
>
> Some changes to team/bond/8021q will be needed in order to get this
> optimization to work when they are enslaved to the bridge instead of the
> front panel port itself?

Right you are. We should probably do something similar to the
switchdev_handle_port_* family of helpers that could be reused in
stacked devices. I will look at it for v1.

>> +	if (!IS_ERR_OR_NULL(priv))
>> +		p->accel_priv = priv;
>> +}
>> +
>> +static void nbp_switchdev_fwd_offload_del(struct net_bridge_port *p)
>> +{
>> +	if (!p->accel_priv)
>> +		return;
>> +
>> +	p->dev->netdev_ops->ndo_dfwd_del_station(p->dev, p->accel_priv);
>> +	p->accel_priv = NULL;
>> +}
