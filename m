Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CAE6215E3
	for <lists.bridge@lfdr.de>; Tue,  8 Nov 2022 15:16:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0836C402F3;
	Tue,  8 Nov 2022 14:16:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0836C402F3
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=n3e/n0SR
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mHe82SS8llYQ; Tue,  8 Nov 2022 14:16:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 34B3B4025D;
	Tue,  8 Nov 2022 14:16:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 34B3B4025D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C4D09C0077;
	Tue,  8 Nov 2022 14:16:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 50B45C002D
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 14:16:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1E2FC4025D
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 14:16:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E2FC4025D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L6TjUd6BnTPn for <bridge@lists.linux-foundation.org>;
 Tue,  8 Nov 2022 14:16:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 37807401A0
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 37807401A0
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 14:16:31 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id ud5so38997997ejc.4
 for <bridge@lists.linux-foundation.org>; Tue, 08 Nov 2022 06:16:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
 bh=5+moI56BVGSpSI7NRhPLKmv5unmEMYSjuvcZ0Mb6yFY=;
 b=n3e/n0SREsvjcgxpduufQ2rlt6toRTNhJcM8JrQeukA4/U+lHZXB9kDA1SzJCqKoT0
 uzMvbfUa4yBKehzvw6CpQ0/+RGtr98Q+GlVJCLx7kMTL0j/ch+07wVR8eDcezjZh5Pu3
 mu9Gv5XMXYG476C5JuGodX3JWHum1X4GtHuB/Wg1pTUINexkXK3cTo3XxG9Q+wFobBm4
 C1F1DY0WLuplv+d+DUK/C9xZay8xesM+HxCckaUeaF4KNzMkLOGtg9QILXHcmmRTjbdk
 EhsEldZIGzvL90+ifSyKLnLUn58oegecqiu/pPXG8zkAv6DAG6WT530qcPmhcgujw9Td
 VQ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5+moI56BVGSpSI7NRhPLKmv5unmEMYSjuvcZ0Mb6yFY=;
 b=g4BM3k90Ro9QwplUp6QDR7c29SvYlq8u0TXoH6oTVzvUD2BYZvgHiymq1Hs3vWK56k
 BuPlH8nIKuALAQNadXeUU3lBcd8F2Qy2QneqT+UAUqtWM0aAQqD6/ORvrpJYsWsqOYXc
 +67icc7/YPM1jhg2r1bgTTmnAwCdSgDMkKMkPPJUjL/CGHgKgGZs8pzy43mtsyzlvuRQ
 7c4qz3hF16fR6rrNnxb/nihXnDRvvXGh0bNxLgj1iFmcs++8cIqDz9/8d9xgtC1oFg4b
 svEY9p6xyPnFjyzfu5BIKk8jICqwWPWWdxlsY0dAy8qO+zU+3X3zHBrBcSuxHGS7G+rC
 0Ccw==
X-Gm-Message-State: ANoB5plzxwRl1pKoUrN5+sY6R0A6jE224qOKsfuQ7URdg/D0rPP0M8Ur
 /cmDOi964A+naU5eJlj3q+E=
X-Google-Smtp-Source: AA0mqf5SczXPn92m5329abAbaWcF8Ig8g9SjzgZbZxIP09gzKT9hyIOvyA4RobWfnegiHsbjDU7fTA==
X-Received: by 2002:a17:906:7e55:b0:7ae:4bfc:ef45 with SMTP id
 z21-20020a1709067e5500b007ae4bfcef45mr15823740ejr.94.1667916989236; 
 Tue, 08 Nov 2022 06:16:29 -0800 (PST)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 1-20020a170906308100b007a97a616f3fsm4678111ejv.196.2022.11.08.06.16.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Nov 2022 06:16:28 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
X-Google-Original-From: Vladimir Oltean <vladimir.oltean@nxp.com>
Date: Tue, 8 Nov 2022 16:16:26 +0200
To: Petr Machata <petrm@nvidia.com>
Message-ID: <20221108141626.eymqr6lomtppeaek@skbuf>
References: <cover.1667902754.git.petrm@nvidia.com>
 <b266dcf6d647684a10984d12f98549f93fd378ab.1667902754.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b266dcf6d647684a10984d12f98549f93fd378ab.1667902754.git.petrm@nvidia.com>
Cc: Ivan Vecera <ivecera@redhat.com>, bridge@lists.linux-foundation.org,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 Jiri Pirko <jiri@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 "Hans J . Schultz" <netdev@kapio-technology.com>,
 Eric Dumazet <edumazet@google.com>, mlxsw@nvidia.com,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 01/15] bridge: switchdev: Let device
 drivers determine FDB offload indication
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

On Tue, Nov 08, 2022 at 11:47:07AM +0100, Petr Machata wrote:
> From: Ido Schimmel <idosch@nvidia.com>
> 
> Currently, FDB entries that are notified to the bridge via
> 'SWITCHDEV_FDB_ADD_TO_BRIDGE' are always marked as offloaded. With MAB
> enabled, this will no longer be universally true. Device drivers will
> report locked FDB entries to the bridge to let it know that the
> corresponding hosts required authorization, but it does not mean that
> these entries are necessarily programmed in the underlying hardware.
> 
> Solve this by determining the offload indication based of the
> 'offloaded' bit in the FDB notification.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> Reviewed-by: Petr Machata <petrm@nvidia.com>
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> ---

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
