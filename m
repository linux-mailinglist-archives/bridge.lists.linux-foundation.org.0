Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E415F319B3F
	for <lists.bridge@lfdr.de>; Fri, 12 Feb 2021 09:36:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9F77686DAF;
	Fri, 12 Feb 2021 08:36:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bAej-mckvBae; Fri, 12 Feb 2021 08:36:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 46D9B86427;
	Fri, 12 Feb 2021 08:36:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1F387C013A;
	Fri, 12 Feb 2021 08:36:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4D44FC013A
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 08:36:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3809B6E56C
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 08:36:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4WwEQyNba2_C for <bridge@lists.linux-foundation.org>;
 Fri, 12 Feb 2021 08:36:12 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 8B4226F486; Fri, 12 Feb 2021 08:36:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com
 [209.85.218.45])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0A9966E56C
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 08:36:10 +0000 (UTC)
Received: by mail-ej1-f45.google.com with SMTP id jt13so1627326ejb.0
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 00:36:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ezkeluSd4BagWsILaf5/hUzcBicqZlpvmIkdsGSPDRo=;
 b=at4BigjysdRTlvmAHpGvKMJOJyedyTJmIQVo3VlJXyd8c55IC1lqPE1agEyURsnTix
 A/8NnmTmCO4a+Hh8fSs+cSQnMEtM3iviPtUHmSpf10z2YyJQdxYuzrG07CwK9GkXoZ9V
 uB/0W8OLbrh3RjKaHWLIDBaNz/v2YBUINgodO3/Vy6Qz2eFoQ9+CKU1OBhahM20tESVG
 GF74+8TVi1J71NzdSiTR+C3ksWnL6DYbx9oJkTZoae4bSsAdkYhnnM29ghemS2SNdsT9
 //7MzaTi5ht9BMOnTiIqt59NH3ez7SXUkX+nwwei/hxh3ieT7B4ABZHND5N3lgRZLLH6
 xj1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ezkeluSd4BagWsILaf5/hUzcBicqZlpvmIkdsGSPDRo=;
 b=CbiFVW0V62pzuN3grcNJlEzPwm/ofwCQaHQzeunJxRh7Rma+dfdHH1sQhZ6zBIv1oJ
 3jeNzCjvErj7RUoAiTLxNi1rILnyDR5C+3LNp2wjWYh8VBC8FFAS7QlcD1K5esWvqNEO
 OVSRhfCrVlg4uvGQesvFUM0bDW3YF8parFCk0hGzE3AQsUl49qaOH4XVAGxpdASmUStF
 e5UD9gNW9lljDaTu28v5AIe7JydftkN1vpXKNdyyNFxT+GKvDZzImffEuUv15/8j+CbS
 OGxctsAhKXJwkT7MPTInPc7/EiCJJ/jn9JG/d7TjrerRQS3s24hVooXrjq1fawgyFodF
 1oeA==
X-Gm-Message-State: AOAM532EdLGJRvWohraDiWsdGcbUsdGlDfqPzRHFgcQRUb7po0WLfSZ9
 6Xia9TrVxv+bKkTcvJtxMLA=
X-Google-Smtp-Source: ABdhPJy/HltcIda+pT8wJyJl+7I+N7SBnqR6xSW2Hl3W57Qa0EfEmJya9dDHfQXYJgqT5EQ5FAtrsw==
X-Received: by 2002:a17:906:2993:: with SMTP id
 x19mr1840796eje.409.1613118968909; 
 Fri, 12 Feb 2021 00:36:08 -0800 (PST)
Received: from skbuf (5-12-227-87.residential.rdsnet.ro. [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id m10sm5688975edi.54.2021.02.12.00.36.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Feb 2021 00:36:08 -0800 (PST)
Date: Fri, 12 Feb 2021 10:36:06 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Message-ID: <20210212083606.by43rrib65uuxxlu@skbuf>
References: <20210212010531.2722925-1-olteanv@gmail.com>
 <20210212010531.2722925-7-olteanv@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210212010531.2722925-7-olteanv@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Taras Chornyi <tchornyi@marvell.com>, Ido Schimmel <idosch@idosch.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 linux-omap@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v4 net-next 6/9] net: dsa: act as ass
 passthrough for bridge port flags
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

On Fri, Feb 12, 2021 at 03:05:28AM +0200, Vladimir Oltean wrote:
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> 
> There are multiple ways in which a PORT_BRIDGE_FLAGS attribute can be
> expressed by the bridge through switchdev, and not all of them can be
> emulated by DSA mid-layer API at the same time.

Oops, odd typo in the commit title. I only remember something was not
right, I had noticed the "as" word was missing so I added it, but I
apparently did not notice why it was missing...
