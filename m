Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB076216EA
	for <lists.bridge@lfdr.de>; Tue,  8 Nov 2022 15:38:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E42B8176D;
	Tue,  8 Nov 2022 14:38:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E42B8176D
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=KTfLvqiS
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6ctInk6yIcbc; Tue,  8 Nov 2022 14:38:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id E92D9817B0;
	Tue,  8 Nov 2022 14:38:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E92D9817B0
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9A2C9C0077;
	Tue,  8 Nov 2022 14:38:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 61612C002D
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 14:38:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3935081761
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 14:38:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3935081761
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sz7lhdvBLTIl for <bridge@lists.linux-foundation.org>;
 Tue,  8 Nov 2022 14:38:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 462B18176D
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 462B18176D
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 14:38:05 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id f5so39157475ejc.5
 for <bridge@lists.linux-foundation.org>; Tue, 08 Nov 2022 06:38:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=/YbHJ4ibpE0FQ4BHuZdNaBU3FcOkLHnK8mt3jJ2tQt8=;
 b=KTfLvqiSu2CcpT1y/20uKajI43NPbw82QWz6SxA0Lir3LFhIVCreDjd17jJiA/SaGm
 AcNAaQpUcrMIX7H5HInQwsM5uEUZ0BBQLzmufcqbGiTPMcWhxrQoIimZtNeNWLUPx3v3
 OkgdSlwRJ4mo9VjQEUIKVbPM8olU9MN+RaF/55nEuHtdh33jvWV0N8Lmj9U77VXBULcd
 mB8r4PzXH87nFtyZ3ALFRNfdqWB8ek/SBpF5rzG5YrYyYUdagOxSQmM5EAn+KYYr/YAp
 UE4AJCRu1+MuxTMDHIj0AossrJjIZpLvMrDrtpNUi88EfacEokhe7sbj/tiZOYhS0GVd
 A1OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/YbHJ4ibpE0FQ4BHuZdNaBU3FcOkLHnK8mt3jJ2tQt8=;
 b=hjua69fyjTm9KNFCeRRuiYsNJi7H/rNFFwW4QRHqYsdEHwjnJ0A8oZY7CwIiKspGLn
 g8xhCdDAShN2/ZJSGg4q8M0TwAorMZi3U9fmKExJYK5sE6m1MLIr95u3tKiRhUakX1+p
 QAAHrZfaJ9ReKAkrs+M/rOcpvvri4zW0QSet6+vtCwdn65G7wZlHwBoeqiuDSJqXla/U
 4WmGDKuCBN5kUp/sxMn9dBrrJbBlfcskvT1QwlNTwLE0sZ4KbSCS9xjTIE9RmPAi7QYD
 lU8mCGUdwXPY1Pc6RONc2HSUcEiIo4D8iM3nwC0+dC5yA6ONyL/6+ixuB/tseaRAUzqK
 sXnQ==
X-Gm-Message-State: ACrzQf0NS/gxwbIYYJ2ZPB4ZwnUtZesleWbQM3x4iqUVs10rhBEheML6
 m0bxbX/YuNCh1vG5mCsCUg4=
X-Google-Smtp-Source: AMsMyM6BJQaQkCs8iviKLy1mFElapHYnAwJIx487QHMTByllRJi4gCAegc69C5Cfm2RRt9bfrQUajA==
X-Received: by 2002:a17:906:24cd:b0:78d:4cb3:f65d with SMTP id
 f13-20020a17090624cd00b0078d4cb3f65dmr990263ejb.79.1667918284086; 
 Tue, 08 Nov 2022 06:38:04 -0800 (PST)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 i28-20020a1709067a5c00b0077f20a722dfsm4680287ejo.165.2022.11.08.06.38.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Nov 2022 06:38:03 -0800 (PST)
Date: Tue, 8 Nov 2022 16:38:01 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Petr Machata <petrm@nvidia.com>
Message-ID: <20221108143801.42rqnrtprjxurgqh@skbuf>
References: <cover.1667902754.git.petrm@nvidia.com>
 <cover.1667902754.git.petrm@nvidia.com>
 <ec42c7bf37d9a5e05096c409dd96c1c582747b24.1667902754.git.petrm@nvidia.com>
 <ec42c7bf37d9a5e05096c409dd96c1c582747b24.1667902754.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ec42c7bf37d9a5e05096c409dd96c1c582747b24.1667902754.git.petrm@nvidia.com>
 <ec42c7bf37d9a5e05096c409dd96c1c582747b24.1667902754.git.petrm@nvidia.com>
Cc: Ivan Vecera <ivecera@redhat.com>, bridge@lists.linux-foundation.org,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 Jiri Pirko <jiri@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 "Hans J . Schultz" <netdev@kapio-technology.com>,
 Eric Dumazet <edumazet@google.com>, mlxsw@nvidia.com,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 04/15] devlink: Add packet traps for
 802.1X operation
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

On Tue, Nov 08, 2022 at 11:47:10AM +0100, Petr Machata wrote:
> The "locked_port" drop trap can be enabled to gain visibility into
> packets that were dropped by the device due to the locked bridge port
> check.

Pretty cool.

The action of all devlink DROP traps can be changed to e.g. CONTROL, right?
This doesn't functionally affect an offloading driver, because what
won't be dropped in hw on a locked port will still be dropped by the
bridge, correct?

I'm not familiar with devlink traps. Is there another way to see the
dropped packets except to do what I said (change the action type)?
